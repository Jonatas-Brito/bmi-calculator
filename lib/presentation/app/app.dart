import 'package:bmi_calculator/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:bmi_calculator/core/style/bmi_calculator_ui_theme.dart';
import 'package:bmi_calculator/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/l10n/l10n.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // onGenerateTitle: (context) => AppLocalizations.of(context).projectName,
      routerConfig: router,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: L10n.all,
      debugShowCheckedModeBanner: false,
      theme: BmiCalculatorUITheme.standard.copyWith(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
          elevation: 0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            elevation: 0,
            foregroundColor: BmiCalculatorUiBrandingColors.greenVogue,
          ),
        ),
      ),
    );
  }
}
