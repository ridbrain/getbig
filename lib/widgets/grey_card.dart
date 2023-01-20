import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';

class GreyCard extends StatelessWidget {
  const GreyCard({
    super.key,
    required this.label,
    this.actionLabel,
    this.actionOnTap,
    this.child,
  });

  final String label;
  final String? actionLabel;
  final Function()? actionOnTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: actionOnTap,
                child: Text(
                  actionLabel ?? "",
                  style: const TextStyle(
                    fontSize: 18,
                    color: yellow,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.all(
                Radius.circular(12.5),
              ),
            ),
            padding: const EdgeInsets.all(15),
            child: child,
          ),
        ],
      ),
    );
  }
}
