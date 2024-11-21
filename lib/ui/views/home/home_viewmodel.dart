import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:nested_bottom_nav_app/ui/views/home_nested_view/home_nested_view_view.dart';

class HomeViewModel extends BaseViewModel {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateToNestedHome() {
    navigatorKey.currentState?.push(
      MaterialPageRoute(builder: (context) => const HomeNestedViewView()),
    );
  }
}