import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularProgress extends StatelessWidget {
  const CircularProgress({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
      appearance: CircularSliderAppearance(
        infoProperties: InfoProperties(
          mainLabelStyle: const TextStyle(
            color: yellow,
            fontSize: 20,
          ),
        ),
        counterClockwise: true,
        customColors: CustomSliderColors(
          trackColor: onYellow,
          progressBarColor: yellow,
          dotColor: yellow,
        ),
        customWidths: CustomSliderWidths(
          trackWidth: 20,
          progressBarWidth: 20,
          shadowWidth: 3,
        ),
      ),
      min: 0,
      max: 100,
      initialValue: value,
    );
  }
}
