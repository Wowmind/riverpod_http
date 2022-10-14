// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_generated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User()
  ..id = json['id'] as int
  ..tittle = json['tittle'] as String
  ..body = json['body'] as String;

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'tittle': instance.tittle,
      'body': instance.body,
    };
