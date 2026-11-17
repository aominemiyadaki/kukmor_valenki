import 'package:domain_shared/domain_shared.dart';
import 'package:showcase/src/domain/repositories/showcase_repository.dart';

final class ShowcaseRepositoryImpl implements ShowcaseRepository {
  static const List<ValenkiProduct> _sampleProducts = [
    ValenkiProduct(
      id: 'kukmor-classic-tep-men',
      title: 'Валенки «Кукмор Премиум» ТЭП',
      subtitle: '100% овечья шерсть, усиленная подошва',
      category: ValenkiCategory.men,
      price: 4900,
      availableSizes: [40, 41, 42, 43, 44, 45, 46],
      soleType: SoleType.tep,
      imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=800&auto=format&fit=crop&q=80',
      description: 'Традиционные кукморские валенки ручной формовки. Морозостойкая подошва ТЭП надежно защищает от слякоти и реагентов, не скользит на льду. Сохраняют тепло до -40°C.',
      isHit: true,
    ),
    ValenkiProduct(
      id: 'kukmor-embroidered-snegiri-women',
      title: 'Валенки женские «Снегири»',
      subtitle: 'Дизайнерская вышивка шерстяной нитью',
      category: ValenkiCategory.women,
      price: 5600,
      availableSizes: [36, 37, 38, 39, 40, 41],
      soleType: SoleType.tep,
      imageUrl: 'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?w=800&auto=format&fit=crop&q=80',
      description: 'Нежные и невероятно теплые женские валенки из отборной белой шерсти с ручной вышивкой. Удобная колодка, легкая нескользящая подошва.',
      isHit: true,
    ),
    ValenkiProduct(
      id: 'kukmor-hunter-extreme-men',
      title: 'Валенки «Охотник-Рыбак» Высокие',
      subtitle: 'Плотный войлок 8 мм, защита до -50°C',
      category: ValenkiCategory.men,
      price: 6200,
      availableSizes: [41, 42, 43, 44, 45, 46, 47],
      soleType: SoleType.tep,
      imageUrl: 'https://images.unsplash.com/photo-1608256246200-53e635b5b65f?w=800&auto=format&fit=crop&q=80',
      description: 'Экстремальное утепление для зимней рыбалки, охоты и работы на морозе. Высокое голенище защищает от попадания снега.',
    ),
    ValenkiProduct(
      id: 'kukmor-kids-mishka',
      title: 'Валенки детские «Мишутка»',
      subtitle: 'Анатомическая колодка, мягкий войлок',
      category: ValenkiCategory.kids,
      price: 3400,
      availableSizes: [24, 25, 26, 27, 28, 29, 30, 31],
      soleType: SoleType.tep,
      imageUrl: 'https://images.unsplash.com/photo-1514989940723-e8e51635b782?w=800&auto=format&fit=crop&q=80',
      description: 'Безопасные детские валенки из экологически чистого мытого войлока без красителей. Ножки малыша всегда сухие и в тепле.',
      isHit: true,
    ),
    ValenkiProduct(
      id: 'kukmor-chuni-home',
      title: 'Чуни домашние «Кукмор Уют»',
      subtitle: 'Мягкая натуральная овчина для дома и дачи',
      category: ValenkiCategory.slippers,
      price: 2400,
      availableSizes: [36, 37, 38, 39, 40, 41, 42, 43, 44],
      soleType: SoleType.felt,
      imageUrl: 'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?w=800&auto=format&fit=crop&q=80',
      description: 'Уютные войлочные тапочки-чуни. Идеальный подарок близким. Снимают усталость в ногах, улучшают микроциркуляцию.',
      isHit: true,
    ),
    ValenkiProduct(
      id: 'kukmor-classic-felt-traditional',
      title: 'Валенки классические без подошвы',
      subtitle: 'Исконный русский войлок под галоши',
      category: ValenkiCategory.men,
      price: 3800,
      availableSizes: [39, 40, 41, 42, 43, 44, 45],
      soleType: SoleType.felt,
      imageUrl: 'https://images.unsplash.com/photo-1582588678413-dbf45f4823e9?w=800&auto=format&fit=crop&q=80',
      description: 'Классические бесшовные кукморские валенки из 100% шерсти. Подходят для сухих морозов в деревне или ношения с силиконовыми галошами.',
    ),
  ];

  @override
  Future<List<ValenkiProduct>> getProducts({ValenkiCategory? category}) async {
    // Имитация минимальной сетевой задержки для плавного UI
    await Future<void>.delayed(const Duration(milliseconds: 150));
    if (category == null || category == ValenkiCategory.all) {
      return _sampleProducts;
    }
    return _sampleProducts.where((p) => p.category == category).toList();
  }

  @override
  Future<ValenkiProduct?> getProductById(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    return _sampleProducts.where((p) => p.id == id).firstOrNull;
  }
}
