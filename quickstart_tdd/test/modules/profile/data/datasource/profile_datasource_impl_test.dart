import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource_impl.dart';
import 'package:quickstart_tdd/modules/profile/data/models/user_info_model.dart';

// class ProfileDatasourceMock extends Mock implements ProfileDatasource {}

void main() {
  final mockProfile = ProfileDatasourceImpl();
  const userInfo = UserInfoModel(name: 'Felipe', age: 25);

  // setUp(() {
  //   mockProfile = ProfileDatasourceImpl();
  // });

  test('Should return UserInfoModel object', () async {
    // Arrange
    // when(mockProfile.getUserExternal()).thenAnswer((_) async => userInfo);
    when(mockProfile.getUserExternal()).thenAnswer((_) async => userInfo);
    // Act
    final result = await mockProfile.getUserExternal();
    // Assert
    expect(result, userInfo);
  });
}
