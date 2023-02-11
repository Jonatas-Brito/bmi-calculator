import 'package:bmi_calculator/di/di.dart';
import 'package:bmi_calculator/presentation/home/bloc/calculate_bmi/calculate_bmi_bloc.dart';
import 'package:bmi_calculator/presentation/home/bloc/counter_age/counter_age_bloc.dart';
import 'package:bmi_calculator/presentation/home/bloc/counter_weight/counter_weight_bloc.dart';
import 'package:bmi_calculator/presentation/home/bloc/select_sex/select_sex_bloc.dart';
import 'package:bmi_calculator/presentation/home/pages/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<CalculateBmiBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<SelectSexBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<CounterWeightBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<CounterAgeBloc>(),
        ),
      ],
      child: const HomeView(),
    );
  }
}
