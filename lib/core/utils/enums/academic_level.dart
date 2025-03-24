// lib/core/utils/enums/academic_level.dart
enum AcademicLevel {
  first(1, 'الأول'),
  second(2, 'الثاني'),
  third(3, 'الثالث'),
  fourth(4, 'الرابع'),
  fifth(5, 'الخامس'),
  sixth(6, 'السادس'),
  seventh(7, 'السابع'),
  eighth(8, 'الثامن');

  final int value;
  final String arabicOrdinal;
  const AcademicLevel(this.value, this.arabicOrdinal);

  static AcademicLevel fromValue(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => AcademicLevel.first,
    );
  }

  @override
  String toString() => arabicOrdinal;
}