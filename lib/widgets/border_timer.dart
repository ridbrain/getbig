import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';
import 'package:slide_countdown/slide_countdown.dart';

class BorderTimer extends StatelessWidget {
  const BorderTimer({
    super.key,
    required this.color,
    required this.streamDuration,
  });

  final Color color;
  final StreamDuration streamDuration;

  @override
  Widget build(BuildContext context) {
    return SlideCountdown(
      textStyle: const TextStyle(
        fontSize: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        border: Border.all(
          color: color,
          width: borderButtonWidth,
        ),
      ),
      streamDuration: streamDuration,
    );
  }
}
