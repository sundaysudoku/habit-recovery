import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ads_factory.dart';
import 'ads_service.dart';

final adsServiceProvider = Provider<AdsService>((ref) => createAdsService());

/// True once consent is settled and the banner may be shown.
final adsReadyProvider = FutureProvider<bool>(
  (ref) => ref.watch(adsServiceProvider).start(),
);

final adPrivacyOptionsRequiredProvider = FutureProvider<bool>((ref) async {
  final ads = ref.watch(adsServiceProvider);
  if (!await ref.watch(adsReadyProvider.future)) return false;
  return ads.privacyOptionsRequired();
});
