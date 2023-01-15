import 'package:mobx/mobx.dart';
import 'package:quickstart_tdd/modules/profile/domain/usecases/get_user_info.dart';
part 'profile_store.g.dart';

class ProfileStore = _ProfileStoreBase with _$ProfileStore;

abstract class _ProfileStoreBase with Store {
  final GetUserInfo user;
  _ProfileStoreBase({required this.user});

  Future<void> getUserInfo() async {
    final result = await user.getUserInfo();
    result.fold((failure) => null, (success) => null);
  }
}
