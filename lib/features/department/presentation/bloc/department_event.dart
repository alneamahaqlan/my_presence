part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
   const factory DepartmentEvent.fetchDepartments() = FetchDepartments;
    const factory DepartmentEvent.addDepartment({required String facultyId, required Department department}) = AddDepartment;
  const factory DepartmentEvent.updateDepartment(Department department) = UpdateDepartment;
  
}