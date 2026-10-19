/// How a scheduled habit went on a given day.
///
/// Stored in the database by [code]; never reorder or reuse codes.
enum CheckInStatus {
  normal(1),
  smaller(2),
  notDone(3);

  const CheckInStatus(this.code);

  final int code;

  /// Normal and smaller completions both count as showing up.
  bool get showedUp => this != notDone;

  static CheckInStatus fromCode(int code) =>
      values.firstWhere((s) => s.code == code);
}
