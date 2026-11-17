enum ValenkiCategory {
  all(title: 'Все модели'),
  men(title: 'Мужские'),
  women(title: 'Женские'),
  kids(title: 'Детские'),
  slippers(title: 'Чуни и тапочки');

  final String title;
  const ValenkiCategory({required this.title});
}
