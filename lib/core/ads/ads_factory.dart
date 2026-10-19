// The Google Mobile Ads SDK has no web support, so it is only compiled in
// where dart:io exists.
export 'ads_factory_stub.dart' if (dart.library.io) 'ads_factory_mobile.dart';
