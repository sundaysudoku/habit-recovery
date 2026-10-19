# Releasing Habit Recovery

## Ads
The app shows one small banner (Google AdMob) after the Google consent (UMP)
flow. By default it uses Google's public **test** ids, so no real ad is served.

For release, create an AdMob account, register the app and a banner unit, then build with:

```
flutter build appbundle --release \
  --dart-define=ADMOB_BANNER_UNIT_ID=ca-app-pub-XXXXXXXXXXXXXXXX/YYYYYYYYYY \
  -PadmobAppId=ca-app-pub-XXXXXXXXXXXXXXXX~ZZZZZZZZZZ
```

Never click your own real ads. Use test ids while developing.

## Signing
1. Create an upload key once (keep it and its passwords safe; losing it is painful):
   `keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload`
2. Create `android/key.properties` (git-ignored):
   ```
   storeFile=C:/keys/upload-keystore.jks
   storePassword=...
   keyAlias=upload
   keyPassword=...
   ```
3. `flutter build appbundle --release` produces `build/app/outputs/bundle/release/app-release.aab`.

Without `key.properties` the release build falls back to the debug key (fine for local testing, rejected by Google Play).

## Before upload
- Bump `version:` in `pubspec.yaml` (e.g. `1.0.0+1`, the number after `+` must grow on every upload).
- Replace the launcher icon in `android/app/src/main/res/mipmap-*`.
- `flutter analyze && flutter test`.
