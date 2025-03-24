import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/features/auth/data/models/user_model.dart';
import 'package:my_presence/features/home/presentation/pages/home_page.dart';

import '../../dependency_injection.dart';
import '../../features/auth/presentation/screens/forget_password_screen.dart';
import '../../features/auth/presentation/screens/log_in_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/dashBoard/presentation/pages/dash_board_page.dart';
import '../../features/department/data/models/department_model.dart';
import '../../features/department/presentation/pages/add_department_page.dart';
import '../../features/department/presentation/pages/department_page.dart';
import '../../features/faculty/presentation/pages/add_faculty_page.dart';
import '../../features/faculty/presentation/pages/faculties_page.dart';
import '../../features/lecture/data/repositories/lecture_repository.dart';
import '../../features/lecture/presentation/bloc/lecture_bloc.dart';
import '../../features/lecture/presentation/pages/create_lecture_page.dart';
import '../../features/lecture/presentation/pages/lectures_page.dart';
import '../../features/lectureSchedule/data/models/schedule_model.dart';
import '../../features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';
import '../../features/lectureSchedule/presentation/pages/create_lecture_schedule_page.dart';
import '../../features/lectureSchedule/presentation/pages/edit_lecture_schedule_page.dart';
import '../../features/lectureSchedule/presentation/pages/lecture_schedule_detail_page.dart';
import '../../features/lectureSchedule/presentation/pages/lecture_schedule_list_page.dart';
import '../../features/members/presentation/screens/add_member_screen.dart';
import '../../features/members/presentation/screens/edit_member_screen.dart';
import '../../features/members/presentation/screens/members_screen.dart';
import '../../features/members/presentation/screens/view_member_screen.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/reports/data/models/income_model.dart';
import '../../features/reports/presentation/bloc/income_bloc.dart';
import '../../features/reports/presentation/screens/add_income_screen.dart';
import '../../features/reports/presentation/screens/edit_income_screen.dart';
import '../../features/reports/presentation/screens/reports_page.dart';
import '../../features/root/presentation/pages/root_page.dart';
import '../../features/settings/screens/settings_page.dart';
import '../../features/subject/presentation/pages/add_subject_page.dart';
import '../../features/subject/presentation/pages/subjects_page.dart';
import '../services/firebase_auth_service.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._(); // Private constructor to prevent instantiation

  static final GoRouter router = GoRouter(
    // debugLogDiagnostics: true,
    initialLocation: initial,
    routes: _routes,
    redirect: _redirectLogic,
  );

  static String? _redirectLogic(BuildContext context, GoRouterState state) {
    log("Redirecting to ${state.matchedLocation}");
    final isAuth = getIt<FirebaseAuthService>().isLoggedIn;
    final isGoingToAuth =
        state.matchedLocation == AppRoutes.login ||
        state.matchedLocation == AppRoutes.signup ||
        state.matchedLocation == AppRoutes.resetPassword;

    if (!isAuth && !isGoingToAuth) {
      return AppRoutes.login;
    }

    if (isAuth && isGoingToAuth) {
      return AppRoutes.home;
    }
    if (state.matchedLocation == AppRoutes.root) {
      return AppRoutes.home;
    }

    return null; // No redirect
  }

  static final List<RouteBase> _routes = [
    GoRoute(
      path: AppRoutes.login,
      name: AppRoutes.login,
      builder: (context, state) => const LogInScreen(),
    ),
    GoRoute(
      path: AppRoutes.signup,
      name: AppRoutes.signup,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: AppRoutes.resetPassword,
      name: AppRoutes.resetPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
    ),
    GoRoute(
      path: AppRoutes.notifications,
      name: AppRoutes.notifications,
      builder: (context, state) => NotificationsPage(),
    ),
    //AddSubjectPage
    GoRoute(
      path: AppRoutes.addSubject,
      name: AppRoutes.addSubject,
      builder: (context, state) {
        return AddSubjectPage();
      },
    ),

    //SubjectsPage
    GoRoute(
      path: AppRoutes.subjects,
      name: AppRoutes.subjects,
      builder: (context, state) {
        return SubjectsPage();
      },
    ),
    GoRoute(
      path: AppRoutes.faculties,
      name: AppRoutes.faculties,
      builder: (context, state) => FacultiesPage(),
      routes: [
        //AddFacultyPage
        GoRoute(
          path: AppRoutes.addFaculty,
          name: AppRoutes.addFaculty,
          builder: (context, state) => AddFacultyPage(),
        ),
        GoRoute(
          path: AppRoutes.departments,
          name: AppRoutes.departments,
          builder: (context, state) {
            return DepartmentPage();
          },
          routes: [
            GoRoute(
              path: AppRoutes.lectureScheduleList,
              name: AppRoutes.lectureScheduleList,
              builder: (context, state) {
                final router = getIt<GoRouter>();
                final department = router.state.extra as Department;
                context.read<LectureScheduleBloc>().add(
                  SetDepartment(department: department),
                );

                context.read<LectureScheduleBloc>().add(
                  FetchLectureSchedules(department: department),
                );
                return SchedulePage();
              },
              routes: [
                //CreateLectureSchedulePage
                GoRoute(
                  path: AppRoutes.addLectureSchedule,
                  name: AppRoutes.addLectureSchedule,
                  builder: (context, state) {
                    final department = state.extra as Department;
                    return CreateLectureSchedulePage(department: department);
                  },
                ),

                //EditLectureSchedulePage
                GoRoute(
                  path: AppRoutes.editLectureSchedule,
                  name: AppRoutes.editLectureSchedule,
                  builder: (context, state) {
                    final schedule = state.extra as Schedule;
                    return EditLectureSchedulePage(schedule: schedule);
                  },
                ),

                //LectureScheduleDetailPage
                GoRoute(
                  path: AppRoutes.viewLectureSchedule,
                  name: AppRoutes.viewLectureSchedule,
                  builder: (context, state) {
                    final schedule = state.extra as Schedule;
                    return LectureScheduleDetailPage(schedule: schedule);
                  },
                ),
                // lectures
                GoRoute(
                  path: AppRoutes.lectures,
                  name: AppRoutes.lectures,
                  builder: (context, state) {
                    final schedule = state.extra as Schedule;

                    return BlocProvider(
                      create:
                          (context) => LectureBloc(getIt<LectureRepository>()),
                      child: LecturesPage(schedule: schedule),
                    );
                  },
                  routes: [
                    GoRoute(
                      path: AppRoutes.createLecture,
                      name: AppRoutes.createLecture,
                      builder: (context, state) {
                        final schedule = state.extra as Schedule;
                        return BlocProvider(
                          create:
                              (context) =>
                                  LectureBloc(getIt<LectureRepository>()),
                          child: CreateLecturePage(schedule: schedule),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            //AddDepartmentPage
            GoRoute(
              path: AppRoutes.addDepartment,
              name: AppRoutes.addDepartment,
              builder: (context, state) {
                // final faculty = state.extra as Faculty;
                return AddDepartmentPage();
              },
            ),
          ],
        ),
      ],
    ),

    ShellRoute(
      builder: (context, state, child) => RootPage(child: child),
      routes: [
        GoRoute(
          path: AppRoutes.home,
          name: AppRoutes.home,
          builder: (context, state) => HomePage(),
          routes: [],
        ),
        GoRoute(
          path: AppRoutes.reports,
          name: AppRoutes.reports,
          builder:
              (context, state) => BlocProvider(
                create: (context) => getIt<IncomeBloc>()..add(FetchIncomes()),
                child: ReportsPage(),
              ),
          routes: [
            GoRoute(
              path: AppRoutes.addIncomeInner,
              name: AppRoutes.addIncomeInner,
              builder:
                  (context, state) => BlocProvider(
                    create: (context) => getIt<IncomeBloc>(),
                    child: AddIncomeScreen(),
                  ),
            ),
            GoRoute(
              path: AppRoutes.editReport,
              name: AppRoutes.editReport,
              builder: (context, state) {
                final income = state.extra as Income;
                return BlocProvider(
                  create: (context) => getIt<IncomeBloc>(),
                  child: EditIncomeScreen(income: income),
                );
              },
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.addReport,
          name: AppRoutes.addReport,
          builder:
              (context, state) => BlocProvider(
                create: (context) => getIt<IncomeBloc>(),
                child: AddIncomeScreen(),
              ),
        ),
        GoRoute(
          path: AppRoutes.members,
          name: AppRoutes.members,
          builder: (context, state) => const MembersScreen(),
          routes: [
            GoRoute(
              path: AppRoutes.editMember,
              name: AppRoutes.editMember,
              builder: (context, state) {
                final member = state.extra as UserModel;
                return EditMemberScreen(member: member);
              },
            ),
            GoRoute(
              path: AppRoutes.viewMember,
              name: AppRoutes.viewMember,
              builder: (context, state) {
                final member = state.extra as UserModel;
                return ViewMemberScreen(member: member);
              },
            ),
            GoRoute(
              path: AppRoutes.addMember,
              name: AppRoutes.addMember,
              builder: (context, state) => const AddMemberScreen(),
            ),
          ],
        ),

        GoRoute(
          path: AppRoutes.settings,
          name: AppRoutes.settings,
          builder: (context, state) => SettingsPage(),
        ),

        //dashboard
        GoRoute(
          path: AppRoutes.dashboard,
          name: AppRoutes.dashboard,
          builder: (context, state) => const DashBoardPage(),
        ),
      ],
    ),
  ];
}
