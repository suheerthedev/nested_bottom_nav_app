import 'package:stacked/stacked.dart';
import 'package:nested_bottom_nav_app/app/app.locator.dart';
import 'package:nested_bottom_nav_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate splash screen delay
    _navigationService.replaceWithMainNavigationView(); // Navigate to MainNavigationView
  }
}
