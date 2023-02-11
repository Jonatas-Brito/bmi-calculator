import 'package:bmi_calculator/di/di.dart';
import 'package:bmi_calculator/presentation/home/bloc/calculate/calculate_bmi_bloc.dart';
import 'package:bmi_calculator/presentation/home/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CalculateBmiBloc>(),
      child: const HomeView(),
    );
  }
}
