import 'package:json_annotation/json_annotation.dart';
import 'package:my_http/userModel/user_list_.dart';
part 'list_model.g.dart';

@JsonSerializable(explicitToJson: true)

class UserList{
  UserList({required this.page, required this.per_page, required this.total, required this.totalPages, required this.user_list});

  @JsonKey(name : 'page')
 final int page;

  @JsonKey(name : 'per_page')
  final int per_page;

  @JsonKey(name :'total')
final int total;

  @JsonKey(name : 'total_pages')
 final int totalPages;

  @JsonKey(name : 'data')
  final List <User_List> user_list;

  factory UserList.fromJson(Map<String, dynamic> json) => _$UserListFromJson(json);
  Map<String, dynamic> toJson() => _$UserListToJson(this);


}