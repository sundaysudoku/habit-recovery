import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ads_providers.dart';

/// The single small banner, shown above the navigation bar once consent allows.
class AdBannerBar extends ConsumerWidget {
  const AdBannerBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ready = ref.watch(adsReadyProvider).value ?? false;
    if (!ready) return const SizedBox.shrink();
    return Center(
      heightFactor: 1,
      child: ref.watch(adsServiceProvider).buildBanner(),
    );
  }
}
