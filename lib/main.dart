// lib/main.dart
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_presence/features/members/presentation/bloc/member_bloc.dart';
import 'package:my_presence/features/root/presentation/pages/bloc/root_bloc.dart';

import 'core/utils/theme/app_theme.dart';
import 'core/utils/theme/theme_bloc.dart';
import 'dependency_injection.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/department/presentation/bloc/department_bloc.dart';
import 'features/faculty/presentation/bloc/faculty_bloc.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/lecture/presentation/bloc/lecture_bloc.dart';
import 'features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';
import 'features/subject/presentation/bloc/subject_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('ar', 'YE')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      startLocale: Locale('ar', 'YE'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<RootBloc>()),
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(
          create:
              (context) =>
                  getIt<HomeBloc>()..add(const HomeEvent.getFaculties()),
        ),
        BlocProvider(
          create:
              (context) =>
                  getIt<MemberBloc>()..add(const MemberEvent.loadMembers()),
        ),
        BlocProvider(create: (context) => getIt<FacultyBloc>()),
        BlocProvider(create: (context) => getIt<DepartmentBloc>()),
        BlocProvider(create: (context) => getIt<SubjectBloc>()),
        BlocProvider(create: (context) => getIt<LectureScheduleBloc>()),
        BlocProvider(create: (context) => getIt<LectureBloc>()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, AppTheme>(
        builder: (context, theme) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            themeMode:
                theme == AppTheme.light ? ThemeMode.light : ThemeMode.dark,
            theme: appTheme,
            darkTheme: darkAppTheme,
            routerConfig: getIt<GoRouter>(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
          );
        },
      ),
    );
  }
}
