import 'package:quickstart_tdd/modules/profile/data/models/user_info_model.dart';

abstract class ProfileDatasource {
  Future<UserInfoModel> getUserExternal();
}
