// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../../../core/enums/gender.dart';
// import '../../../../core/enums/role.dart';

// part 'user_model.freezed.dart';
// part 'user_model.g.dart';

// @freezed
// class UserModel with _$UserModel {
//   const factory UserModel({
//     @JsonKey(name: "name") required String userName,
//     @JsonKey(name: "phone") String? userPhone,
//     @JsonKey(name: "phone_verified_at") DateTime? phoneVerifiedAt,
//     @JsonKey(name: "email") required String email,
//     @JsonKey(name: "email_verified_at") DateTime? emailVerifiedAt,
//     @JsonKey(name: "fcm") String? fcm,
//     @JsonKey(name: "role") required Role role,
//     @JsonKey(name: "gender") required Gender gender,
//     @JsonKey(name: "created_at") required DateTime createdAt,
//     @JsonKey(name: "logo") required String logo,
//     @JsonKey(name: "correct") required int correct,
//     @JsonKey(name: "closely") required int closely,
//     @JsonKey(name: "wrong") required int wrong,
//     @JsonKey(name: "pending") required int pending,
//     @JsonKey(name: "all_points") required int allPoints,
//     @JsonKey(name: "general_rank") required int generalRank,
//     @JsonKey(name: "week_points") required int weekPoints,
//     @JsonKey(name: "week_rank") required int weekRank,
//     @JsonKey(name: "expects_count") required int expectsCount,
//   }) = _UserModel;
  

//   factory UserModel.fromJson(Map<String, dynamic> json) =>
//       _$UserModelFromJson(json);
// }
