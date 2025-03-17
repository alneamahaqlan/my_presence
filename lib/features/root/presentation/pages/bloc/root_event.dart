part of 'root_bloc.dart';

@freezed
class RootEvent with _$RootEvent {
const factory RootEvent.itemTapped({required int index, required BuildContext context}) = _ItemTapped;
}