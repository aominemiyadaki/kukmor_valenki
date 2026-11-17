import 'package:domain_shared/domain_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcase/src/presentation/cubit/showcase_cubit.dart';
import 'package:showcase/src/presentation/widgets/advantages_grid.dart';
import 'package:showcase/src/presentation/widgets/footer_section.dart';
import 'package:showcase/src/presentation/widgets/header_bar.dart';
import 'package:showcase/src/presentation/widgets/hero_section.dart';
import 'package:showcase/src/presentation/widgets/size_calculator_section.dart';
import 'package:showcase/src/presentation/widgets/valenki_card.dart';

class ShowcaseView extends StatefulWidget {
  const ShowcaseView({super.key});

  @override
  State<ShowcaseView> createState() => _ShowcaseViewState();
}

class _ShowcaseViewState extends State<ShowcaseView> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _catalogKey = GlobalKey();

  void _scrollToCatalog() {
    final context = _catalogKey.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F6), // Натуральный тёплый войлок
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // 1. Шапка магазина
            const HeaderBar(),

            // 2. Главный Hero экран
            HeroSection(onCatalogTap: _scrollToCatalog),

            // 3. Блок преимуществ Кукмора
            const AdvantagesGrid(),

            // 4. Каталог витрина
            Container(
              key: _catalogKey,
              color: const Color(0xFFFAF9F6),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'КАТАЛОГ ВАЛЕНОК',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                          color: Color(0xFFC25E34),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Выберите модель для себя и близких',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1E1F22),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Фильтр категорий (Табы / Чипы)
                      BlocBuilder<ShowcaseCubit, ShowcaseState>(
                        buildWhen: (prev, curr) => prev.selectedCategory != curr.selectedCategory,
                        builder: (context, state) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: ValenkiCategory.values.map((category) {
                                final isSelected = state.selectedCategory == category;
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: FilterChip(
                                    selected: isSelected,
                                    label: Text(category.title),
                                    labelStyle: TextStyle(
                                      color: isSelected ? Colors.white : const Color(0xFF333538),
                                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                                      fontSize: 13,
                                    ),
                                    backgroundColor: Colors.white,
                                    selectedColor: const Color(0xFF2C2D30),
                                    checkmarkColor: Colors.white,
                                    side: BorderSide(
                                      color: isSelected ? const Color(0xFF2C2D30) : const Color(0xFFDDD8CD),
                                    ),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                                    onSelected: (_) {
                                      context.read<ShowcaseCubit>().selectCategory(category);
                                    },
                                  ),
                                );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 28),

                      // Сетка товаров
                      BlocBuilder<ShowcaseCubit, ShowcaseState>(
                        builder: (context, state) {
                          if (state.isLoading) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(48),
                                child: CircularProgressIndicator(color: Color(0xFFC25E34)),
                              ),
                            );
                          }
                          if (state.isFailure) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(32),
                                child: Text(state.errorMessage ?? 'Ошибка загрузки каталога'),
                              ),
                            );
                          }

                          final products = state.products;
                          if (products.isEmpty) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(48),
                                child: Text('В выбранной категории сейчас нет моделей в наличии'),
                              ),
                            );
                          }

                          return LayoutBuilder(
                            builder: (context, constraints) {
                              final crossAxisCount = constraints.maxWidth < 640
                                  ? 1
                                  : (constraints.maxWidth < 980 ? 2 : 3);

                              return GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: products.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: crossAxisCount,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: crossAxisCount == 1 ? 0.85 : 0.72,
                                ),
                                itemBuilder: (context, index) {
                                  return ValenkiCard(product: products[index]);
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 5. Калькулятор подбора размера
            const SizeCalculatorSection(),

            // 6. Подвал и приватность
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
