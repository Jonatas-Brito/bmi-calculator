import 'package:bmi_calculator/core/enums/sex_enum.dart';
import 'package:bmi_calculator/core/icons/bmi_icons.dart';
import 'package:bmi_calculator/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:bmi_calculator/core/style/bmi_calculator_ui_text_style.dart';
import 'package:bmi_calculator/domain/entities/informations_about_user_entity.dart';
import 'package:bmi_calculator/presentation/home/controllers/slider_controller.dart';
import 'package:bmi_calculator/presentation/home/widgets/small_vertical_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SliderController sliderController = SliderController.instance;
  late InformationsAboutUserEntity informationsAboutUserEntity;
  double? _height;
  double? _weight;
  double? bmi;
  int? _age;
  Sex? sex;
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CALCULE SEU IMC'),
        backgroundColor: BmiCalculatorUiBrandingColors.greenVogue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                SmallVerticalCard(
                  color: BmiCalculatorUiBrandingColors.flushOrange,
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
                    animation: sliderController,
                    builder: (context, _) {
                      return Text.rich(
                        TextSpan(
                          text: sliderController.sliderValue.toStringAsFixed(2),
                          children: const [
                            TextSpan(text: 'cm'),
                          ],
                        ),
                      );
                    },
                  ),
                  AnimatedBuilder(
                    animation: sliderController,
                    builder: (context, _) {
                      return Slider(
                        value: sliderController.sliderValue,
                        min: 0,
                        max: 3,
                        onChanged: (value) {
                          sliderController.setSliderValue(value: value);
                        },
                        activeColor: BmiCalculatorUiBrandingColors.whitePure,
                        inactiveColor: BmiCalculatorUiBrandingColors.greenVogue,
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
                SmallVerticalCard(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'IDADE',
                        style: BmiCalculatorUiTextStyle.regular,
                      ),
                      Text(
                        '20',
                        style: BmiCalculatorUiTextStyle.regular
                            .copyWith(fontSize: 32),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                BmiCalculatorUiBrandingColors.flushOrange,
                              ),
                            ),
                            icon: SvgPicture.asset(BmiIcons.plusIcon),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 7),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                BmiCalculatorUiBrandingColors.greenVogue,
                              ),
                            ),
                            icon: SvgPicture.asset(
                              BmiIcons.minusIcon,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Spacer(),
                SmallVerticalCard(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'PESO',
                        style: BmiCalculatorUiTextStyle.regular,
                      ),
                      Text(
                        '50',
                        style: BmiCalculatorUiTextStyle.regular
                            .copyWith(fontSize: 32),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                BmiCalculatorUiBrandingColors.greenVogue,
                              ),
                            ),
                            icon: SvgPicture.asset(BmiIcons.plusIcon),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 7),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                BmiCalculatorUiBrandingColors.flushOrange,
                              ),
                            ),
                            icon: SvgPicture.asset(
                              BmiIcons.minusIcon,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 74,
        color: BmiCalculatorUiBrandingColors.flushOrange,
        child: Text(
          'CALCULAR',
          style: BmiCalculatorUiTextStyle.medium,
        ),
      ),
    );
  }
}
