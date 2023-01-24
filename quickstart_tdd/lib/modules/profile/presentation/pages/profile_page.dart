import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_tdd/modules/profile/presentation/stores/profile_store.dart';

class ProfilePage extends StatelessWidget {
  final ProfileStore _store = Modular.get<ProfileStore>();
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    _loadData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Observer(builder: (context) {
        return Center(
          child: Text(
            _store.userData?.name ??
                'You have pushed the button this many times:',
          ),
        );
      }),
    );
  }

  Future<void> _loadData() async => await _store.getUserInfo();
}
