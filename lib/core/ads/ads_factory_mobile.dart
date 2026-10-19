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

class _BannerState extends State<_Banner> {
  BannerAd? _ad;
  bool _loaded = false;
  int? _width;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final width = MediaQuery.sizeOf(context).width.truncate();
    if (width != _width) {
      _width = width;
      _load(width);
    }
  }

  Future<void> _load(int width) async {
    final size = await AdSize.getLargeAnchoredAdaptiveBannerAdSize(
      width,
    );
    if (!mounted || size == null) return;
    _ad?.dispose();
    setState(() => _loaded = false);
    final ad = BannerAd(
      adUnitId: _bannerUnitId,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, _) => ad.dispose(),
      ),
    );
    _ad = ad;
    await ad.load();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _ad;
    if (!_loaded || ad == null) return const SizedBox.shrink();
    return SizedBox(
      width: ad.size.width.toDouble(),
      height: ad.size.height.toDouble(),
      child: AdWidget(ad: ad),
    );
  }
}
