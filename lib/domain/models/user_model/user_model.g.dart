// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      fname: json['firstname'] as String,
      lname: json['lastname'] as String,
      email: json['email'] as String,
      mobile: json['phone'] as String,
      wallet: json['wallet'] as int,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'firstname': instance.fname,
      'lastname': instance.lname,
      'email': instance.email,
      'phone': instance.mobile,
      'wallet': instance.wallet,
    };
