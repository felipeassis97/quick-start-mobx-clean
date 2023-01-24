import 'package:mobx/mobx.dart';
import 'package:quickstart_tdd/modules/profile/domain/entities/user_info_entity.dart';
import 'package:quickstart_tdd/modules/profile/domain/usecases/get_user_info.dart';
part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  final GetUserInfo user;
  _ProfileStoreBase({required this.user});

  @observable
  UserInfoEntity? userData;
  @action
  void setUser(UserInfoEntity value) => userData = value;
  @action
  void clearUser() => userData = null;

  Future<void> getUserInfo() async {
    final result = await user.getUserInfo();
    result.fold((failure) => null, (user) => setUser(user));
  }
}
