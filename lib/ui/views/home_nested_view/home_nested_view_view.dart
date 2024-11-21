import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_nested_view_viewmodel.dart';

class HomeNestedViewView extends StackedView<HomeNestedViewViewModel> {
  const HomeNestedViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeNestedViewViewModel viewModel,
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
  HomeNestedViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeNestedViewViewModel();
}
