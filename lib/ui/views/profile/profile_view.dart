import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      viewModelBuilder: () => ProfileViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(title: const Text('Profile Page')),
        body: Navigator(
          key: model.navigatorKey, // Unique navigator for Profile
          initialRoute: '/nested',
          onGenerateRoute: (settings) {
            if (settings.name == '/nested') {
              return MaterialPageRoute(
                builder: (context) => Center(
                  child: ElevatedButton(
                    onPressed: () {
                      model.navigateToNestedProfile();
                    },
                    child: const Text('Go to Nested Profile View'),
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