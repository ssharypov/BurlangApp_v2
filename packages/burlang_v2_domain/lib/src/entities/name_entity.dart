class NameEntity {
  final String name;
  final String description;
  String? note;
  final bool male;
  final bool female;

  NameEntity({
    required this.name,
    required this.description,
    this.note,
    required this.male,
    required this.female,
  });
}
