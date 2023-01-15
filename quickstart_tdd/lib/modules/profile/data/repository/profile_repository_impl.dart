import 'package:dartz/dartz.dart';
import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource.dart';
import 'package:quickstart_tdd/modules/profile/domain/entities/user_info_entity.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_exceptions.dart';
import 'package:quickstart_tdd/modules/profile/domain/errors/profile_failures.dart';
import 'package:quickstart_tdd/modules/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRespository {
  final ProfileDatasource datasource;

  const ProfileRepositoryImpl({required this.datasource});
  @override
  Future<Either<ProfileFailure, UserInfoEntity>> getUserInfo() async {
    try {
      final result = await datasource.getUserExternal();
      return Right(result);
    } on UnknownException {
      throw Left(UnknownFailure());
    }
  }
}
