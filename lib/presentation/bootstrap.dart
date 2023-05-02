import 'dart:async';
import 'dart:developer';

import 'package:calcule_imc/presentation/app/app.dart';
import 'package:calcule_imc/presentation/app/view/app_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BMIBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    try {
      log('onChange(${bloc.runtimeType}, $change)');
    } on Exception catch (e) {
      log('bloc-onChange exception $e');
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    try {
      log('onError(${bloc.runtimeType}, $error, $stackTrace)');
      super.onError(bloc, error, stackTrace);
    } on Exception catch (e) {
      log('bloc-onError exception $e');
    }
  }
}

Future<void> bootstrap() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
    AppPage(details: details);
  };

  ErrorWidget.builder =
      (FlutterErrorDetails details) => AppPage(details: details);

  Bloc.observer = BMIBlocObserver();

  runZonedGuarded(
    () => runApp(const App(key: ValueKey('app'))),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
