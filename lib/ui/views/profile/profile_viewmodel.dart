import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:nested_bottom_nav_app/ui/views/profile_nested_view/profile_nested_view_view.dart';

class ProfileViewModel extends BaseViewModel {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateToNestedProfile() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => const ProfileNestedViewView()),
    );
  }
}