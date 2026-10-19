import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ads_service.dart';

/// Google's public TEST banner unit. Replace it for release by building with
/// `--dart-define=ADMOB_BANNER_UNIT_ID=ca-app-pub-XXXX/YYYY` (see docs/RELEASE.md).
const _bannerUnitId = String.fromEnvironment(
  'ADMOB_BANNER_UNIT_ID',
  defaultValue: 'ca-app-pub-3940256099942544/9214589741',
);

AdsService createAdsService() => defaultTargetPlatform == TargetPlatform.android
    ? _AdMobService()
    : const NoAdsService();

class _AdMobService implements AdsService {
  Future<bool>? _started;

  @override
  bool get isSupported => true;

  @override
  Future<bool> start() => _started ??= _start();

  Future<bool> _start() async {
    try {
      final info = Completer<void>();
      ConsentInformation.instance.requestConsentInfoUpdate(
        ConsentRequestParameters(),
        info.complete,
        (_) => info.complete(),
      );
      await info.future;

      final form = Completer<void>();
      await ConsentForm.loadAndShowConsentFormIfRequired(
        (_) => form.complete(),
      );
      await form.future;

      if (!await ConsentInformation.instance.canRequestAds()) return false;
      await MobileAds.instance.initialize();
      return true;
    } catch (_) {
      // Ads are optional: never let them break the app.
      return false;
    }
  }

  @override
  Future<bool> privacyOptionsRequired() async {
    try {
      return await ConsentInformation.instance
              .getPrivacyOptionsRequirementStatus() ==
          PrivacyOptionsRequirementStatus.required;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<void> showPrivacyOptions() async {
    final done = Completer<void>();
    await ConsentForm.showPrivacyOptionsForm((_) => done.complete());
    await done.future;
  }

  @override
  Widget buildBanner() => const _Banner();
}

class _Banner extends StatefulWidget {
  const _Banner();

  @override
  State<_Banner> createState() => _BannerState();
}

/// The smallest standard AdMob banner (320x50), centered. Kept small on purpose.
class _BannerState extends State<_Banner> {
  late final BannerAd _ad;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    _ad = BannerAd(
      adUnitId: _bannerUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, _) => ad.dispose(),
      ),
    )..load();
  }

  @override
  void dispose() {
    _ad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_loaded) return const SizedBox.shrink();
    return SizedBox(
      width: AdSize.banner.width.toDouble(),
      height: AdSize.banner.height.toDouble(),
      child: AdWidget(ad: _ad),
    );
  }
}
