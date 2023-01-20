import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';

class BorderButton extends StatelessWidget {
  const BorderButton({
    super.key,
    required this.color,
    required this.label,
    required this.onTap,
  });

  final Color color;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
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
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
