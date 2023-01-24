import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_tdd/modules/app_module.dart';
import 'package:quickstart_tdd/quickstart_app.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const QuickstartApp(),
    ),
  );
}
