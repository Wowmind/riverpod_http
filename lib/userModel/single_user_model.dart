import 'package:json_annotation/json_annotation.dart';
import 'package:my_http/userModel/user_model_generated.dart';
part 'single_user_model.g.dart';

@JsonSerializable()

class SingleUser{
  SingleUser();

  @JsonKey(name: 'userId')
  late User user;

  factory SingleUser.fromJson(Map<String, dynamic> json) => _$SingleUserFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUserToJson(this);
}