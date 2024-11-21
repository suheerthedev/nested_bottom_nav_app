import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Navigator(
          key: model.navigatorKey, // Unique navigator for Home
          initialRoute: '/nested',
          onGenerateRoute: (settings) {
            if (settings.name == '/nested') {
              return MaterialPageRoute(
                builder: (context) => Center(
                  child: ElevatedButton(
                    onPressed: () {
                      model.navigateToNestedHome();
                    },
                    child: const Text('Go to Nested Home View'),
                  ),
                ),
              );
            }
            return null;
          },
        ),
      ),
    );
  }
}