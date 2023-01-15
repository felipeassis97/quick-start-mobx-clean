import 'dart:convert';
import 'dart:io';

import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource.dart';
import 'package:quickstart_tdd/modules/profile/data/models/user_info_model.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_exceptions.dart';

class ProfileDatasourceImpl implements ProfileDatasource {
  static final userMock = File('/user_info_mock.json').readAsStringSync();

  @override
  Future<UserInfoModel> getUserExternal() async {
    try {
      final result = UserInfoModel.fromJson(jsonDecode(userMock));
      return result;
    } on Exception {
      throw UnknownException();
    }
  }
}
