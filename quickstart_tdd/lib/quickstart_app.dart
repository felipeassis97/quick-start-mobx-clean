import 'package:flutter/material.dart';
import 'package:quickstart_tdd/modules/profile/presentation/pages/profile_page.dart';

class QuickstartApp extends StatelessWidget {
  const QuickstartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(title: 'Flutter Demo Home Page'),
    );
  }
}
