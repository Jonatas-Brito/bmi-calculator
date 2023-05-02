import 'package:calcule_imc/di/di.dart';
import 'package:calcule_imc/presentation/app/app.dart';
import 'package:calcule_imc/presentation/bootstrap.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  await bootstrap();

  runApp(const App());
}
