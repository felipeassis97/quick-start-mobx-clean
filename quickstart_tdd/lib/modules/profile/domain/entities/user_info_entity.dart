import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  final String name;
  final int age;

  const UserInfoEntity({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
