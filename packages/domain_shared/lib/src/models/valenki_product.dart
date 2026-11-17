import 'package:domain_shared/src/enums/sole_type.dart';
import 'package:domain_shared/src/enums/valenki_category.dart';

class ValenkiProduct {
  final String id;
  final String title;
  final String subtitle;
  final ValenkiCategory category;
  final int price;
  final List<int> availableSizes;
  final SoleType soleType;
  final String imageUrl;
  final String description;
  final bool isHit;
  final bool isNaturalWool;

  const ValenkiProduct({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.category,
    required this.price,
    required this.availableSizes,
    required this.soleType,
    required this.imageUrl,
    required this.description,
    this.isHit = false,
    this.isNaturalWool = true,
  });

  String buildTelegramOrderUrl({required String username, int? selectedSize}) {
    final sizeText = selectedSize != null ? ', размер: $selectedSize' : '';
    final message = 'Здравствуйте! Хочу заказать: $title (цена: $price ₽$sizeText). Подскажите наличие и доставку СДЭК?';
    return 'https://t.me/$username?text=${Uri.encodeComponent(message)}';
  }

  String buildWhatsAppOrderUrl({required String phone, int? selectedSize}) {
    final sizeText = selectedSize != null ? ', размер: $selectedSize' : '';
    final message = 'Здравствуйте! Хочу заказать: $title (цена: $price ₽$sizeText). Подскажите наличие и доставку?';
    final cleanPhone = phone.replaceAll(RegExp(r'[^0-9]'), '');
    return 'https://wa.me/$cleanPhone?text=${Uri.encodeComponent(message)}';
  }
}
