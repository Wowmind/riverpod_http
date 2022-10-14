// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User_List _$User_ListFromJson(Map<String, dynamic> json) => User_List(
      id: json['id'] as int,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$User_ListToJson(User_List instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
