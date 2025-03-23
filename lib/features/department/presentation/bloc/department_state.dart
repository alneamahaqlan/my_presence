part of 'department_bloc.dart';

@freezed
class DepartmentState with _$DepartmentState {
   const factory DepartmentState({
    @Default(Status.initial()) Status status,
     @Default(Status.initial()) Status createStatus,
     @Default([]) List<Department> departments,
   
    String? message,
  }) = _DepartmentState;

  factory DepartmentState.initial() => const DepartmentState();
}
