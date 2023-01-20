import 'package:flutter/material.dart';
import 'package:getbig/features/bottom_sheet/view_model.dart';
import 'package:getbig/widgets/blur_bottom_sheet.dart';
import 'package:getbig/widgets/border_button.dart';
import 'package:getbig/widgets/border_timer.dart';
import 'package:provider/provider.dart';
import 'package:slide_countdown/slide_countdown.dart';

class MainBottomSheet extends StatelessWidget {
  const MainBottomSheet({super.key});

  static Widget create() {
    return ChangeNotifierProvider(
      create: (_) => BottomSheetViewModel(),
      child: const MainBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<BottomSheetViewModel>();

    return BlurBottomSheet(
      panelController: model.panelController,
      actions: [
        BorderTimer(
          color: Colors.green,
          streamDuration: StreamDuration(
            const Duration(minutes: 10),
            countUp: true,
          ),
        ),
        BorderButton(
          color: Colors.red,
          label: "Stop",
          onTap: () => model.panelController.expand(),
        ),
        BorderButton(
          color: Colors.green,
          label: "Start",
          onTap: () => model.panelController.collapse(),
        ),
      ],
    );
  }
}
