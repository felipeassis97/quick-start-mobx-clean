import 'package:quickstart_tdd/modules/profile/domain/entities/user_info_entity.dart';

class UserInfoModel extends UserInfoEntity {
  const UserInfoModel({required super.name, required super.age});

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
        name: json['name'],
        age: json['age'],
      );

  factory UserInfoModel.fromEntity(UserInfoEntity entity) => UserInfoModel(
        name: entity.name,
        age: entity.age,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
}
