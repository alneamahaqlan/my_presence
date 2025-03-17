import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const factory Status.initial() = _Initial;
  const factory Status.loading() = _Loading;
  const factory Status.success() = _Success;
  const factory Status.failed() = _Failed;
}
