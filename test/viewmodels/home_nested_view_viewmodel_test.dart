import 'package:flutter_test/flutter_test.dart';
import 'package:nested_bottom_nav_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('HomeNestedViewViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
