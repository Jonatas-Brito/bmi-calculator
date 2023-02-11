import 'package:bmi_calculator/di/di.dart';
import 'package:bmi_calculator/presentation/app/app.dart';
// import 'package:bmi_calculator/presentation/bootstrap.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  // await bootstrap();

  runApp(const App());
}
