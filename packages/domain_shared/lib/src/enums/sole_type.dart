enum SoleType {
  tep(label: 'ТЭП подошва (не скользит, не мокнет)'),
  felt(label: 'Классическая войлочная подошва');

  final String label;
  const SoleType({required this.label});
}
