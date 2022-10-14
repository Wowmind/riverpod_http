// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserList _$UserListFromJson(Map<String, dynamic> json) => UserList(
      page: json['page'] as int,
      per_page: json['per_page'] as int,
      total: json['total'] as int,
      totalPages: json['total_pages'] as int,
      user_list: (json['data'] as List<dynamic>)
          .map((e) => User_List.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserListToJson(UserList instance) => <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.user_list.map((e) => e.toJson()).toList(),
    };
