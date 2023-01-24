import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource.dart';
import 'package:quickstart_tdd/modules/profile/data/datasource/profile_datasource_impl.dart';
import 'package:quickstart_tdd/modules/profile/data/repository/profile_repository_impl.dart';
import 'package:quickstart_tdd/modules/profile/domain/repository/profile_repository.dart';
import 'package:quickstart_tdd/modules/profile/domain/usecases/get_user_info.dart';
import 'package:quickstart_tdd/modules/profile/presentation/pages/profile_page.dart';
import 'package:quickstart_tdd/modules/profile/presentation/stores/profile_store.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [
        //Datasource
        Bind.factory<ProfileDatasource>(
          (i) => ProfileDatasourceImpl(),
        ),
        //Repository
        Bind.factory<ProfileRepository>((i) => ProfileRepositoryImpl(
              datasource: i(),
            )),

        //Usecases
        Bind.factory<GetUserInfo>((i) => GetUserInfo(
              repository: i(),
            )),

        //Stores
        Bind.singleton<ProfileStore>((i) => ProfileStore(
              user: i(),
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => ProfilePage()),
      ];
}
