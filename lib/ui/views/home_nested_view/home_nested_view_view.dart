import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_nested_view_viewmodel.dart';

class HomeNestedViewView extends StatelessWidget {
  const HomeNestedViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeNestedViewViewModel>.reactive(
      viewModelBuilder: () => HomeNestedViewViewModel(),
      builder: (context, model, child) => const Scaffold(
        
        body:  Center(
          child: Text('Welcome to Nested Home View'),
        ),
      ),
    );
  }
}
