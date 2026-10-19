import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Loaded once in `main` and injected with `overrideWithValue`.
final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError('sharedPreferencesProvider not overridden'),
);

const _onboardingCompleteKey = 'onboarding_complete';

final onboardingCompleteProvider =
    NotifierProvider<OnboardingCompleteNotifier, bool>(
      OnboardingCompleteNotifier.new,
    );

class OnboardingCompleteNotifier extends Notifier<bool> {
  @override
  bool build() =>
      ref.watch(sharedPreferencesProvider).getBool(_onboardingCompleteKey) ??
      false;

  Future<void> complete() async {
    await ref
        .read(sharedPreferencesProvider)
        .setBool(_onboardingCompleteKey, true);
    state = true;
  }
}
