import 'dart:ui';

import 'package:customizable_space_bar/customizable_space_bar.dart';
import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';

class LargeAppBar extends StatelessWidget {
  const LargeAppBar({
    super.key,
    required this.title,
    this.secondTitle = "",
    this.actions,
  });

  final String title;
  final String secondTitle;
  final List<IconButton>? actions;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      elevation: 0,
      pinned: true,
      expandedHeight: 100,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: CustomizableSpaceBar(
        builder: ((context, scrollingRate) {
          if (scrollingRate == 1) {
            return ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  height: double.infinity,
                  color: transparentGrey,
                  child: SafeArea(
                    child: Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  secondTitle.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: lightGrey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...?actions,
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
