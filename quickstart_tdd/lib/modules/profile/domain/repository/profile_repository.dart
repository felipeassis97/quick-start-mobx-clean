import 'package:dartz/dartz.dart';
import 'package:quickstart_tdd/modules/profile/domain/entities/user_info_entity.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_failures.dart';

abstract class ProfileRespository {
  Future<Either<ProfileFailure, UserInfoEntity>> getUserInfo();
}
