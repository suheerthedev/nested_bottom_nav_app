import 'package:nested_bottom_nav_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:nested_bottom_nav_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:nested_bottom_nav_app/ui/views/home/home_view.dart';
import 'package:nested_bottom_nav_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:nested_bottom_nav_app/ui/views/main_navigation/main_navigation_view.dart';
import 'package:nested_bottom_nav_app/ui/views/profile/profile_view.dart';
import 'package:nested_bottom_nav_app/ui/views/settings/settings_view.dart';
import 'package:nested_bottom_nav_app/ui/views/home_nested_view/home_nested_view_view.dart';
import 'package:nested_bottom_nav_app/ui/views/profile_nested_view/profile_nested_view_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: MainNavigationView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: HomeNestedViewView),
    MaterialRoute(page: ProfileNestedViewView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
