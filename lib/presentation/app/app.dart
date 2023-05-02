import 'package:calcule_imc/core/style/bmi_calculator_ui_theme.dart';
import 'package:calcule_imc/presentation/router/router.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: BmiCalculatorUITheme.standard,
    );
  }
}
