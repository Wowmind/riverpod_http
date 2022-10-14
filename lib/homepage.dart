import 'package:flutter/material.dart';
import 'package:my_http/logic/myProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userController = ref.watch(UserNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Api Call'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
     body: Builder(builder: (context){
       if(userController is UserInitial){
       }else if(userController is UserLoading){
         return const Center(child: CircularProgressIndicator());
       } else if(userController is UserLoaded){
         return ListView.builder(
         itemCount: userController.userList.user_list.length,
         itemBuilder: (context, index){
           return ListTile(
           leading: Text('${userController.userList.user_list[index].id}'),
             title: Text('${userController.userList.user_list[index].firstName}'),
             subtitle: Text('${userController.userList.user_list[index].email}'),


           );
       });
       }
       return Center(
         child: Text('Unable to load Data',
             style: TextStyle(color: Colors.black, fontSize: 20)),
       );
     },),

    );
  }
}
