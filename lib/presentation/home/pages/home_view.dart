import 'package:calcule_imc/core/enums/sex_enum.dart';
import 'package:calcule_imc/core/enums/status_enum.dart';
import 'package:calcule_imc/core/icons/bmi_icons.dart';
import 'package:calcule_imc/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_text_style.dart';
import 'package:calcule_imc/core/utils/set_bmi_description_util.dart';
import 'package:calcule_imc/core/widgets/dialog_floating.dart';
import 'package:calcule_imc/domain/entities/bmi_informations_entity.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:calcule_imc/presentation/home/bloc/calculate_bmi/calculate_bmi_bloc.dart';
import 'package:calcule_imc/presentation/home/bloc/counter_age/counter_age_bloc.dart';
import 'package:calcule_imc/presentation/home/bloc/counter_weight/counter_weight_bloc.dart';
import 'package:calcule_imc/presentation/home/bloc/select_sex/select_sex_bloc.dart';
import 'package:calcule_imc/presentation/home/controllers/slider_controller.dart';
import 'package:calcule_imc/presentation/home/widgets/small_vertical_card_counter.dart';
import 'package:calcule_imc/presentation/home/widgets/small_vertical_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeMixin {
  final _sliderForHeightController = SliderForHeightController.instance;
  late SelectSexBloc _selectSexBloc;
  late CalculateBmiBloc _calculateBmiBloc;
  late CounterWeightBloc _counterWeightBloc;
  late CounterAgeBloc _counterAgeBloc;
  Sex _sex = Sex.unselected;
  double _height = 1.5;
  int _age = 25;
  double _weight = 50;

  @override
  initState() {
    super.initState();
    _selectSexBloc = BlocProvider.of<SelectSexBloc>(context);
    _calculateBmiBloc = BlocProvider.of<CalculateBmiBloc>(context);
    _counterWeightBloc = BlocProvider.of<CounterWeightBloc>(context);
    _counterAgeBloc = BlocProvider.of<CounterAgeBloc>(context);

    _sliderForHeightController.addListener(() {
      _height = _sliderForHeightController.sliderValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CalculateBmiBloc, CalculateBmiState>(
      bloc: _calculateBmiBloc,
      listener: (context, state) {
        if (state.status == Status.success) {
          BmiInformationsEntity bmiInformationsEntity =
              state.bmiInformationsEntity!;

          DialogFloating(
            context: context,
            title: bmiInformationsEntity.bmiType.title,
            iconPath: bmiInformationsEntity.bmiType.iconPath,
            description:
                setBmiDescription(bmiInformationsEntity: bmiInformationsEntity),
          ).show();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('CALCULE SEU IMC'),
          backgroundColor: BmiCalculatorUiBrandingColors.greenVogue,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              BlocConsumer<SelectSexBloc, SelectSexState>(
                bloc: _selectSexBloc,
                listener: (context, state) {
                  if (state.status == Status.success) {
                    _sex = state.sex!;
                  }
                },
                builder: (context, state) {
                  return Row(
                    children: [
                      SmallVerticalCard(
                        onTap: () {
                          _selectSexBloc.add(const SelectSex(sex: Sex.man));
                        },
                        color: _setColorBySex(Sex.man),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(BmiIcons.maleIcon),
                            const SizedBox(height: 16),
                            Text(
                              'Homem',
                              style: BmiCalculatorUiTextStyle.regular,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SmallVerticalCard(
                        onTap: () {
                          _selectSexBloc.add(const SelectSex(sex: Sex.woman));
                        },
                        color: _setColorBySex(Sex.woman),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              BmiIcons.femaleIcon,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Mulher',
                              style: BmiCalculatorUiTextStyle.regular,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 120,
                decoration: const BoxDecoration(
                  color: BmiCalculatorUiBrandingColors.chatamsBlue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 22),
                    const Text('ALTURA'),
                    const SizedBox(height: 6),
                    AnimatedBuilder(
                      animation: _sliderForHeightController,
                      builder: (context, _) {
                        return Text.rich(
                          TextSpan(
                            text: _sliderForHeightController.sliderValue
                                .toStringAsFixed(2),
                            children: const [
                              TextSpan(text: 'cm'),
                            ],
                          ),
                        );
                      },
                    ),
                    AnimatedBuilder(
                      animation: _sliderForHeightController,
                      builder: (context, _) {
                        return Slider(
                          value: _sliderForHeightController.sliderValue,
                          min: 0,
                          max: 3,
                          onChanged: (value) {
                            _sliderForHeightController.setSliderValue(
                                value: value);
                          },
                          activeColor: BmiCalculatorUiBrandingColors.whitePure,
                          inactiveColor:
                              BmiCalculatorUiBrandingColors.greenVogue,
                          thumbColor: BmiCalculatorUiBrandingColors.flushOrange,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  BlocConsumer<CounterAgeBloc, CounterAgeState>(
                    bloc: _counterAgeBloc,
                    listener: (context, state) {
                      _age = state.age;
                    },
                    builder: (context, state) {
                      return SmallVerticalCardCounter(
                        title: 'IDADE',
                        value: _age.toDouble(),
                        pressedMinusButton: () {
                          _counterAgeBloc.add(MinusAge(age: _age));
                        },
                        pressedPlusButton: () {
                          _counterAgeBloc.add(PlusAge(age: _age));
                        },
                      );
                    },
                  ),
                  const Spacer(),
                  BlocConsumer<CounterWeightBloc, CounterWeightState>(
                    bloc: _counterWeightBloc,
                    listener: (context, state) {
                      _weight = state.weight;
                    },
                    builder: (context, state) {
                      return SmallVerticalCardCounter(
                        title: 'PESO',
                        value: _weight,
                        pressedMinusButton: () {
                          _counterWeightBloc.add(MinusWeight(weight: _weight));
                        },
                        pressedPlusButton: () {
                          _counterWeightBloc.add(PlusWeight(weight: _weight));
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: InkWell(
          onTap: () {
            _calculateBmiBloc.add(
              CalculateBmi(
                informationsAboutUserEntity: InformationsAboutUserEntity(
                  name: "_name",
                  age: _age,
                  height: _height,
                  weight: _weight,
                  sex: _sex,
                ),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            height: 74,
            color: BmiCalculatorUiBrandingColors.flushOrange,
            child: Text('CALCULAR', style: BmiCalculatorUiTextStyle.medium),
          ),
        ),
      ),
    );
  }

  Color _setColorBySex(Sex sex) => _sex == sex
      ? BmiCalculatorUiBrandingColors.flushOrange
      : BmiCalculatorUiBrandingColors.chatamsBlue;
}
