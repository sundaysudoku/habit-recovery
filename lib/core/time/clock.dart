import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'local_date.dart';

/// Source of the current time; overridden in tests.
final clockProvider = Provider<DateTime Function()>((ref) => DateTime.now);

LocalDate today(Ref ref) => LocalDate.fromDateTime(ref.read(clockProvider)());
