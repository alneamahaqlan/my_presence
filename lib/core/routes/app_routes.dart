part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';
  static const String root = '/';
  static const String reports = '/incomes';
  static const String addReport = '/add-income';
  static const String editReport = '/edit-income';
  static const String addIncomeInner = 'add-income';
  static const String members = '/members';
  static const String addMember = '/add-member';
  static const String editMember = '/edit-member'; 
   static const String viewMember = '/view-member';

  static const String addMemberInner = 'add-member';
  static const String departments = '/departments';
  static const String subjects = '/subjects';
  static const String subjectsDetails = '/subjects-details';
  static const String addSubject = '/add-subject';
  static const String graphicalSummaries = '/graphical-summaries';
  static const String categoryDetails = '/category-details';

  static const String settings = '/settings';
  static const String home = '/home';
  static const String notifications = '/notifications';
  
  static const String faculties = '/faculties';
  static const String addFaculty = '/add-faculty';
  static const String editFaculty = '/edit-faculty';
  static const String viewFaculty = '/view-faculty';

  static const String lectureScheduleList = '/lecture-schedule-list';
  static const String addLectureSchedule = '/add-lecture-schedule';
  static const String editLectureSchedule = '/edit-lecture-schedule';
  static const String viewLectureSchedule = '/view-lecture-schedule';

  static const String addDepartment = '/add-department';
  static const String editDepartment = '/edit-department';
  static const String viewDepartment = '/view-department';

  //dashboard
  static const String dashboard = '/dashboard';

  //lectures
  static const String lectures = '/lectures';
  static const String createLecture = 'lectures.create';
  static const String editLecture = '/edit-lecture';
  static const String viewLecture = '/view-lecture';
}
