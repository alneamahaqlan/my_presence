import 'package:json_annotation/json_annotation.dart';

part 'general_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class GeneralResponse<T> {
  @JsonKey(name: "message")
  String? message;

  @JsonKey(name: "data")
  T? data;


  GeneralResponse({
    this.message,
    this.data,
  });

  factory GeneralResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$GeneralResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$GeneralResponseToJson(this, toJsonT);
}
