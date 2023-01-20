import 'package:flutter/material.dart';
import 'package:getbig/widgets/circular_progress.dart';
import 'package:getbig/widgets/grey_card.dart';
import 'package:getbig/widgets/large_app_bar.dart';
import 'package:lottie/lottie.dart';

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: CustomScrollView(
          slivers: [
            LargeAppBar(
              title: "Summary",
              secondTitle: "Wednesday, jan 11",
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: GreyCard(
                label: "Goal progress",
                actionLabel: "Set",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "You didn't set a goal for this month, do it to track your progress.",
                        style: TextStyle(
                          overflow: TextOverflow.clip,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    CircularProgress(value: 77),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GreyCard(
                label: "History",
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        "You don't have workouts yet, if you want to start just press button 'start'.",
                        style: TextStyle(
                          overflow: TextOverflow.clip,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Lottie.asset(
                      'assets/arm.json',
                      height: 150,
                      width: 150,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
