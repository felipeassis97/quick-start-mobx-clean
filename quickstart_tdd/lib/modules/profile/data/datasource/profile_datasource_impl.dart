import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource.dart';
import 'package:quickstart_tdd/modules/profile/data/models/user_info_model.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_exceptions.dart';

class ProfileDatasourceImpl implements ProfileDatasource {
  @override
  Future<UserInfoModel> getUserExternal() async {
    try {
      return const UserInfoModel(name: 'Felipe', age: 25);
    } on Exception {
      throw UnknownException();
    }
  }
}
