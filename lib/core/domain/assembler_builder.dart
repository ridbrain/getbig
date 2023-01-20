import 'package:flutter/material.dart';
import 'package:getbig/features/home/view.dart';
import 'package:getbig/features/home/view_model.dart';
import 'package:provider/provider.dart';

class AssemblerBuilder {
  Widget homeScreen() {
    return ChangeNotifierProvider(
      create: (_) => HomeScreenViewModel(),
      child: const HomeScreenWidget(),
    );
  }

  Widget settingsScreen() {
    return ChangeNotifierProvider(
      create: (_) => HomeScreenViewModel(),
      child: const HomeScreenWidget(),
    );
  }

  Widget authScreen() {
    return ChangeNotifierProvider(
      create: (_) => HomeScreenViewModel(),
      child: const HomeScreenWidget(),
    );
  }
}
