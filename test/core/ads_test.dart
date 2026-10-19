import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/core/ads/ads_service.dart';

import 'package:habit_recovery/features/today/domain/check_in_status.dart';

import '../features/recovery/recovery_flow_test.dart' show seedHabit;
import '../helpers.dart';

class _FakeAds implements AdsService {
  _FakeAds({this.canShow = true, this.optionsRequired = false});

  final bool canShow;
  final bool optionsRequired;
  int optionsShown = 0;
  int started = 0;

  @override
  bool get isSupported => true;

  @override
  Future<bool> start() async {
    started++;
    return canShow;
  }

  @override
  Future<bool> privacyOptionsRequired() async => optionsRequired;

  @override
  Future<void> showPrivacyOptions() async => optionsShown++;

  @override
  Widget buildBanner() => const SizedBox(
    key: Key('test-banner'),
    width: 320,
    height: 50,
    child: Text('Test ad'),
  );
}

void main() {
  testWidgets('no ad is shown when ads are not available (web, tests)', (
    tester,
  ) async {
    await pumpApp(tester, onboardingComplete: true);
    expect(find.byKey(const Key('test-banner')), findsNothing);
  });

  testWidgets('no ad is shown when consent does not allow ads', (tester) async {
    await pumpApp(
      tester,
      onboardingComplete: true,
      ads: _FakeAds(canShow: false),
    );
    expect(find.byKey(const Key('test-banner')), findsNothing);
  });

  testWidgets('exactly one banner, above the navigation bar, on every tab', (
    tester,
  ) async {
    await pumpApp(tester, onboardingComplete: true, ads: _FakeAds());
    final nav = find.byType(NavigationBar);
    for (final tab in ['Today', 'Habits', 'Progress', 'Settings']) {
      await tester.tap(find.descendant(of: nav, matching: find.text(tab)));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('test-banner')), findsOneWidget);
      expect(
        tester.getBottomLeft(find.byKey(const Key('test-banner'))).dy,
        lessThanOrEqualTo(tester.getTopLeft(nav).dy),
      );
    }
  });

  testWidgets('the ad sits below the check-in buttons, not over them', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(800, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final db = inMemoryDatabase();
    await seedHabit(db, daysAgo: 0);
    await pumpApp(
      tester,
      onboardingComplete: true,
      database: db,
      ads: _FakeAds(),
    );
    final buttons = find.byType(SegmentedButton<CheckInStatus>);
    expect(buttons, findsOneWidget);
    expect(
      tester.getBottomLeft(buttons).dy,
      lessThanOrEqualTo(
        tester.getTopLeft(find.byKey(const Key('test-banner'))).dy,
      ),
    );
  });

  testWidgets('ad choices appear in Settings only when required', (
    tester,
  ) async {
    final ads = _FakeAds(optionsRequired: true);
    await pumpApp(tester, onboardingComplete: true, ads: ads);
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('Ad privacy choices'), findsOneWidget);
    await tester.tap(find.text('Ad privacy choices'));
    await tester.pumpAndSettle();
    expect(ads.optionsShown, 1);
  });

  testWidgets('no ad choices entry when not required', (tester) async {
    await pumpApp(tester, onboardingComplete: true, ads: _FakeAds());
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('Ad privacy choices'), findsNothing);
  });
}
