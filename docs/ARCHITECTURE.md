# Architecture

```
lib/
  main.dart              Entry point
  app/                   App widget, theme, routing
  core/                  Shared code: database, time/date helpers, notifications
  features/<name>/
    data/                Storage (Drift tables, repositories)
    domain/              Pure Dart models and rules (scheduling, recovery) – unit tested
    presentation/        Screens and widgets
  l10n/                  ARB translation files (app_en.arb is the template)
test/                    Mirrors lib/
```

Rules:
- No hardcoded UI strings: add them to `lib/l10n/app_en.arb`, then run `flutter gen-l10n` (also runs automatically on `flutter run`).
- Use directional widgets (`EdgeInsetsDirectional`, `AlignmentDirectional`) so Arabic and Urdu lay out right-to-left.
- Business rules live in `domain/` as pure functions so they can be tested without Flutter.
- Planned packages per phase: Riverpod (state), Drift (SQLite with migrations), flutter_local_notifications + timezone (reminders), google_mobile_ads (one banner, Phase 7).
