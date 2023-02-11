import 'package:flutter/material.dart';

class SliderController extends ChangeNotifier {
  static SliderController instance = SliderController();

  double _sliderValue = 1.5;

  double get sliderValue => _sliderValue;

  void setSliderValue({required double value}) {
    _sliderValue = value;
    notifyListeners();
  }
}
