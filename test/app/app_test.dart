import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:habit_recovery/app/app.dart';

void main() {
  testWidgets('shows the Today placeholder in English', (tester) async {
    await tester.pumpWidget(const HabitRecoveryApp(locale: Locale('en')));
    await tester.pumpAndSettle();

    expect(find.text('Habit Recovery'), findsOneWidget);
    expect(
      find.text('Small steps count. Your habits will appear here.'),
      findsOneWidget,
    );
  });

  testWidgets('shows the Today placeholder in Vietnamese', (tester) async {
    await tester.pumpWidget(const HabitRecoveryApp(locale: Locale('vi')));
    await tester.pumpAndSettle();

    expect(
      find.text(
        'Bước nhỏ cũng đáng ghi nhận. Thói quen của bạn sẽ hiện ở đây.',
      ),
      findsOneWidget,
    );
  });

  testWidgets('uses Material 3', (tester) async {
    await tester.pumpWidget(const HabitRecoveryApp(locale: Locale('en')));
    final context = tester.element(find.byType(Scaffold));
    expect(Theme.of(context).useMaterial3, isTrue);
  });
}
