// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleUser _$SingleUserFromJson(Map<String, dynamic> json) =>
    SingleUser()..user = User.fromJson(json['userId'] as Map<String, dynamic>);

Map<String, dynamic> _$SingleUserToJson(SingleUser instance) =>
    <String, dynamic>{
      'userId': instance.user,
    };
