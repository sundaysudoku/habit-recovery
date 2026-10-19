import 'package:flutter/widgets.dart';

/// The one banner ad this app shows, and the consent flow that gates it.
///
/// Kept behind an interface so the rest of the app (and every test) never
/// touches the Google Mobile Ads SDK, which only exists on Android.
abstract class AdsService {
  /// False on platforms with no ads (web preview, tests, desktop).
  bool get isSupported;

  /// Runs the Google consent (UMP) flow and starts the SDK.
  /// Returns true when ads may be requested.
  Future<bool> start();

  /// Whether the user can reopen their consent choices (required in the EEA).
  Future<bool> privacyOptionsRequired();

  Future<void> showPrivacyOptions();

  /// A single anchored banner. Only call after [start] returned true.
  Widget buildBanner();
}

class NoAdsService implements AdsService {
  const NoAdsService();

  @override
  bool get isSupported => false;

  @override
  Future<bool> start() async => false;

  @override
  Future<bool> privacyOptionsRequired() async => false;

  @override
  Future<void> showPrivacyOptions() async {}

  @override
  Widget buildBanner() => const SizedBox.shrink();
}
