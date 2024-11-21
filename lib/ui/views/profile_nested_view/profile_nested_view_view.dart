import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_nested_view_viewmodel.dart';

class ProfileNestedViewView extends StackedView<ProfileNestedViewViewModel> {
  const ProfileNestedViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileNestedViewViewModel viewModel,
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
  ProfileNestedViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileNestedViewViewModel();
}
