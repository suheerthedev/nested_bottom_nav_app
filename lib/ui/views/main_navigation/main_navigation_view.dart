import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'main_navigation_viewmodel.dart';

class MainNavigationView extends StackedView<MainNavigationViewModel> {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainNavigationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  MainNavigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainNavigationViewModel();
}
