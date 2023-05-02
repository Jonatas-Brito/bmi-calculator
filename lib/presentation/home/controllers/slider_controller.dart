import 'package:flutter/material.dart';

class SliderForHeightController extends ChangeNotifier {
  static SliderForHeightController instance = SliderForHeightController();

  double _sliderValue = 1.5;

  double get sliderValue => _sliderValue;

  void setSliderValue({required double value}) {
    _sliderValue = value;
    notifyListeners();
  }
}
