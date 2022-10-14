import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_http/userModel/list_model.dart';
import 'package:my_http/userModel/user_list_.dart';

class HttpServices{
  var dio = Dio();
  final baseUrl = 'https://reqres.in/';
  final url = 'api/users?page=2';

  HttpServices(){
    dio =Dio(BaseOptions(
      baseUrl: baseUrl
    ));
  }

  
  Future<List<User_List>> fetchData() async {

    Response response;
    try{
      response = await dio.get(url);
      final userList = UserList.fromJson(response.data);
      print(response.statusCode);
      return userList.user_list;

    }catch(error){
      print(error.toString());
      throw error;
    }
  }

}
final UserApiProvider = Provider((ref)=>HttpServices());