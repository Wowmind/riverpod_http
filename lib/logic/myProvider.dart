
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_http/userModel/list_model.dart';

import '../userModel/respository.dart';

abstract class UserState {
  const UserState();
}

class UserInitial extends UserState{
  const UserInitial();
}

class UserLoading extends UserState{
  const UserLoading();
}

class UserLoaded extends UserState{
  final UserList userList;
  UserLoaded(this.userList);
}
class UserError extends UserState{
  String error;
  UserError(this.error);
}

class UserStateNotifier extends StateNotifier<UserState>{
  final Ref ref;
  UserStateNotifier(this.ref) : super(const UserInitial());

  Future<void> getUser(int id) async {
    state = const UserLoading();
    try{
      final result = await ref.read(UserApiProvider).fetchData();
      state = UserLoaded(result);

    }catch(e){
      state = UserError(e.toString());
    }
  }
}
final UserNotifierProvider= StateNotifierProvider.autoDispose<UserStateNotifier, UserState>((ref) => UserStateNotifier(ref));