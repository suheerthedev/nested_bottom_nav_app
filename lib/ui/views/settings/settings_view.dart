import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'settings_viewmodel.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SettingsViewModel viewModel,
    Widget? child,
  ) {
    return const Scaffold(
        body: SafeArea(
            child: Center(
      child: Text("Settings Page"),
    )));
  }

  @override
  SettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SettingsViewModel();
}
