import 'package:json_annotation/json_annotation.dart';
part 'user_model_generated.g.dart';


@JsonSerializable()

class User{

  @JsonKey(name: 'id')
late int id;

  @JsonKey(name: 'tittle')
late String tittle;

  @JsonKey(name: 'body')
late String body;

  User();

factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
Map<String, dynamic> toJson() => _$UserToJson(this);


}