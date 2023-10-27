// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{
  const factory UserModel({
    @JsonKey(name: "firstname") required String fname,
    @JsonKey(name: "lastname") required String lname,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "phone") required String mobile,
    @JsonKey(name: "wallet") required int wallet
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}