import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:nested_bottom_nav_app/ui/views/home/home_view.dart';
import 'package:nested_bottom_nav_app/ui/views/profile/profile_view.dart';
import 'package:nested_bottom_nav_app/ui/views/settings/settings_view.dart';
import 'main_navigation_viewmodel.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainNavigationViewModel>.reactive(
      viewModelBuilder: () => MainNavigationViewModel(),
      builder: (context, model, child) => Scaffold(
        body: IndexedStack(
          index: model.currentIndex,
          children: const [
            HomeView(),
            ProfileView(),
            SettingsView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
