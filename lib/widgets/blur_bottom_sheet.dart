import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:getbig/app/themes.dart';

class BlurBottomSheet extends StatelessWidget {
  const BlurBottomSheet({
    super.key,
    required this.panelController,
    this.axisAlignment = MainAxisAlignment.spaceBetween,
    required this.actions,
  });

  final SlidingUpPanelController panelController;
  final MainAxisAlignment axisAlignment;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanelWidget(
      onStatusChanged: (status) {
        if (status == SlidingUpPanelStatus.anchored) {
          panelController.expand();
        }
      },
      controlHeight: 70 + MediaQuery.of(context).padding.bottom,
      panelController: panelController,
      enableOnTap: false,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),
          child: Container(
            color: transparentGrey,
            child: Column(
              children: [
                Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: axisAlignment,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: actions,
                  ),
                ),
                Container(
                  height: 0.5,
                  color: grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
