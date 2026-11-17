import 'package:domain_shared/domain_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_action/order_action.dart';
import 'package:showcase/src/presentation/extensions/category_localization_extension.dart';
import 'package:showcase/src/presentation/l10n/showcase_localizations.dart';

class ValenkiCard extends StatefulWidget {
  const ValenkiCard({super.key, required this.product});

  final ValenkiProduct product;

  @override
  State<ValenkiCard> createState() => _ValenkiCardState();
}

class _ValenkiCardState extends State<ValenkiCard> {
  int? _selectedSize;

  @override
  void initState() {
    super.initState();
    if (widget.product.availableSizes.isNotEmpty) {
      _selectedSize = widget.product.availableSizes.first;
    }
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final l10n = ShowcaseLocalizations.of(context);
    final orderL10n = OrderActionLocalizations.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE8E5DD)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Блок фото с бейджами
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 1.25,
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFFF0EEE9),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.snowshoeing_rounded, size: 48, color: Color(0xFFBDBAB2)),
                          const SizedBox(height: 8),
                          Text(
                            l10n?.brandTitle ?? '',
                            style: const TextStyle(color: Color(0xFF8C8A84), fontSize: 13),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Бейджи
              Positioned(
                top: 12,
                left: 12,
                child: Row(
                  children: [
                    if (product.isHit)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFC25E34),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          l10n?.badgeHit ?? '',
                          style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                      ),
                    if (product.isHit) const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2C2D30).withValues(alpha: 0.85),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        l10n?.badgeWool ?? '',
                        style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Тело карточки
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Название
                Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1E1F22),
                  ),
                ),
                const SizedBox(height: 4),

                // Описание подошвы через локализованный extension
                Text(
                  product.soleType.localizedName(l10n),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF6B6E76),
                  ),
                ),
                const SizedBox(height: 12),

                // Выбор размера
                Text(
                  l10n?.availableSizesLabel ?? '',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8A8D94),
                  ),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: product.availableSizes.map((size) {
                    final isSelected = _selectedSize == size;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          _selectedSize = size;
                        });
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: isSelected ? const Color(0xFF2C2D30) : const Color(0xFFF3F1EC),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                            color: isSelected ? const Color(0xFF2C2D30) : const Color(0xFFE4E1D8),
                          ),
                        ),
                        child: Text(
                          '$size',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                            color: isSelected ? Colors.white : const Color(0xFF333538),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),

                // Цена и кнопки заказа
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n?.priceRub(product.price) ?? '${product.price} ₽',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF1E1F22),
                          ),
                        ),
                        if (_selectedSize != null)
                          Text(
                            orderL10n?.sizeTextFormat(_selectedSize!) ?? '',
                            style: const TextStyle(fontSize: 11, color: Color(0xFF8C8F96)),
                          ),
                      ],
                    ),

                    // Кнопки быстрого заказа без 152-ФЗ
                    Row(
                      children: [
                        IconButton(
                          tooltip: orderL10n?.orderWhatsAppButton ?? '',
                          style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFF25D366),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {
                            final sizeTxt = _selectedSize != null
                                ? (orderL10n?.sizeTextFormat(_selectedSize!) ?? '')
                                : '';
                            final msg = orderL10n?.orderWhatsAppMessage(product.title, product.price, sizeTxt) ?? '';
                            context.read<OrderActionCubit>().orderViaWhatsApp(
                                  product: product,
                                  message: msg,
                                );
                          },
                          icon: const Icon(Icons.chat_bubble_outline_rounded, size: 16),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF2AABEE),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          onPressed: () {
                            final sizeTxt = _selectedSize != null
                                ? (orderL10n?.sizeTextFormat(_selectedSize!) ?? '')
                                : '';
                            final msg = orderL10n?.orderTelegramMessage(product.title, product.price, sizeTxt) ?? '';
                            context.read<OrderActionCubit>().orderViaTelegram(
                                  product: product,
                                  message: msg,
                                );
                          },
                          icon: const Icon(Icons.send_rounded, size: 13),
                          label: Text(
                            orderL10n?.orderTelegramButton ?? '',
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
