import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_nested_view_viewmodel.dart';

class ProfileNestedViewView extends StatelessWidget {
  const ProfileNestedViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileNestedViewViewModel>.reactive(
      viewModelBuilder: () => ProfileNestedViewViewModel(),
      builder: (context, model, child) => const Scaffold(
        body: const Center(
          child: Text('Welcome to Nested Profile View'),
        ),
      ),
    );
  }
}
