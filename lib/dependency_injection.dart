import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart'; // Add this import
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../firebase_options.dart';
import 'core/repositories/firestore_repository.dart';
import 'core/routes/app_pages.dart';
import 'core/services/firebase_auth_service.dart';
import 'core/services/firestore_service.dart';
import 'core/services/notification_service.dart';
import 'features/auth/data/models/user_model.dart';
import 'features/auth/data/repositories/auth_repository.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/department/data/repositories/department_repository.dart';
import 'features/department/presentation/bloc/department_bloc.dart';
import 'features/faculty/data/repositories/faculty_repository.dart';
import 'features/faculty/presentation/bloc/faculty_bloc.dart';
import 'features/home/data/repositories/home_repository.dart';
import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/lectureSchedule/data/repositories/lecture_schedule_repository.dart';
import 'features/lectureSchedule/presentation/bloc/lecture_schedule_bloc.dart';
import 'features/members/data/repositories/member_repository.dart';
import 'features/members/presentation/bloc/member_bloc.dart';
import 'features/reports/data/repositories/income_repository.dart';
import 'features/reports/presentation/bloc/income_bloc.dart';
import 'features/root/data/repositories/root_repository.dart';
import 'features/root/presentation/pages/bloc/root_bloc.dart';
import 'features/subject/data/repositories/subject_repository.dart';
import 'features/subject/presentation/bloc/subject_bloc.dart';

final getIt = GetIt.instance;
String initial = AppRoutes.root;

Future<void> setup() async {
  // Initialize EasyLocalization
  await EasyLocalization.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Register FirebaseAuth instance
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

   

  getIt.registerLazySingleton(() => FirebaseAuthService(getIt<FirebaseAuth>()));

  // Register FirebaseFirestore instance
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );

  // Register FirestoreService
  getIt.registerLazySingleton<FirestoreService>(
    () => FirestoreService(
      getIt<FirebaseFirestore>(),
      getIt<FirebaseAuthService>(),
    ),
  );

  // Register FirestoreRepository
  getIt.registerLazySingleton<FirestoreRepository>(
    () => FirestoreRepositoryImpl(getIt<FirestoreService>()),
  );

  // Register AuthRepository
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(getIt()));

  // Register AuthBloc
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(getIt<AuthRepository>()),
  );

  // Register RootRepository
  getIt.registerLazySingleton<RootRepository>(() => RootRepository());

  // Register RootBloc
  getIt.registerLazySingleton<RootBloc>(() => RootBloc());

   // Register NotificationService
  getIt.registerLazySingleton<FlutterLocalNotificationsPlugin>(() => FlutterLocalNotificationsPlugin());
  getIt.registerLazySingleton<NotificationService>(() => NotificationService(getIt()));

  // Register MemberRepository
  getIt.registerFactory<MemberRepository>(
    () => MemberRepository(getIt<FirestoreService>()),
  );

  // Register MemberBloc
  getIt.registerFactory<MemberBloc>(
    () => MemberBloc(getIt<MemberRepository>()),
  );

  // Register IncomeRepository
  getIt.registerFactory<IncomeRepository>(
    () => IncomeRepository(getIt<FirestoreService>()),
  );

  // Register HomeRepository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepository(getIt<FirestoreService>()),
  );

  // Register HomeBloc
  getIt.registerLazySingleton<HomeBloc>(
    () => HomeBloc(getIt<HomeRepository>()),
  );
  // Register HomeRepository
  getIt.registerLazySingleton<LectureScheduleRepository>(
    () => LectureScheduleRepository(getIt<FirestoreService>()),
  );

  // Register HomeBloc
  getIt.registerLazySingleton<LectureScheduleBloc>(
    () => LectureScheduleBloc(getIt<LectureScheduleRepository>()),
  );

  // Register IncomeBloc
  getIt.registerFactory<IncomeBloc>(
    () => IncomeBloc(getIt<IncomeRepository>()),
  );
  // Register FacultyRepository
  getIt.registerSingleton<FacultyRepository>(
    FacultyRepository(getIt<FirestoreService>()),
  ); 
  getIt.registerSingleton<DepartmentRepository>(
    DepartmentRepository(getIt<FirestoreService>()),
  );
  getIt.registerSingleton<SubjectRepository>(
    SubjectRepository(getIt<FirestoreService>()),
  );
  



  

  getIt.registerSingleton<FacultyBloc>(
    FacultyBloc( getIt<FacultyRepository>()),
  );
  getIt.registerSingleton<DepartmentBloc>(
    DepartmentBloc(getIt<DepartmentRepository>()),
  );
  getIt.registerSingleton<SubjectBloc>(SubjectBloc(getIt<SubjectRepository>()));

  // Register GoRouter
  getIt.registerLazySingleton<GoRouter>(() => AppPages.router);

  // Start the app
  await startApp();
  
}

Future<UserModel?> startApp() async {
  // getIt<FirebaseFirestore>().clearPersistence();
  final auth = getIt<AuthBloc>();
  final completer = Completer<UserModel?>();

  // Fetch the user
  auth.add(const AuthEvent.getCurrentUser());

  // Listen for state changes
  final subscription = auth.stream.listen((state) {
    state.status.whenOrNull(
      authenticated: () {
        final user = state.user;
        log('Authenticated User: $user');
        if (!completer.isCompleted) {
          completer.complete(user); // Resolve the future
        }
      },
      unAuthenticated: () {
        log('User is not authenticated');
        if (!completer.isCompleted) {
          completer.complete(null); // Resolve with null
        }
      },
    );
  });

  // Wait for user state
  final user = await completer.future;
  await subscription.cancel(); // Stop listening once resolved
  return user;
}
