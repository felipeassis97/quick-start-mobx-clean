import 'package:dartz/dartz.dart';
import 'package:quickstart_tdd/modules/profile/domain/entities/user_info_entity.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_failures.dart';
import 'package:quickstart_tdd/modules/profile/domain/repository/profile_repository.dart';

class GetUserInfo {
  final ProfileRespository repository;
  const GetUserInfo({required this.repository});

  Future<Either<ProfileFailure, UserInfoEntity>> getUserInfo() async {
    return await repository.getUserInfo();
  }
}
