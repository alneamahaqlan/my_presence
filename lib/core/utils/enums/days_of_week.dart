enum DaysOfWeek {
  saturday('السبت'),
  sunday('الأحد'),
  monday('الاثنين'),
  tuesday('الثلاثاء'),
  wednesday('الأربعاء'),
  thursday('الخميس'),
  friday('الجمعة');

  final String arabicName;
  const DaysOfWeek(this.arabicName);

  @override
  String toString() => arabicName;

  static DaysOfWeek fromDateTime(DateTime dateTime) {
    switch (dateTime.weekday) {
      case DateTime.saturday:
        return DaysOfWeek.saturday;
      case DateTime.sunday:
        return DaysOfWeek.sunday;
      case DateTime.monday:
        return DaysOfWeek.monday;
      case DateTime.tuesday:
        return DaysOfWeek.tuesday;
      case DateTime.wednesday:
        return DaysOfWeek.wednesday;
      case DateTime.thursday:
        return DaysOfWeek.thursday;
      case DateTime.friday:
        return DaysOfWeek.friday;
      default:
        return DaysOfWeek.saturday;
    }
  }
}