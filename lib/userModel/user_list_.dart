import 'package:json_annotation/json_annotation.dart';
part 'user_list_.g.dart';

@JsonSerializable()

class User_List{

  User_List({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar
});

  @JsonKey(name : 'id')
  final int id;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'first_name')
  final String firstName;

  @JsonKey(name : 'last_name')
  final String lastName;

  @JsonKey(name : 'avatar')
  final String avatar;

  factory User_List.fromJson(Map<String, dynamic> json) => _$User_ListFromJson(json);
  Map<String, dynamic> toJson() => _$User_ListToJson(this);

}
