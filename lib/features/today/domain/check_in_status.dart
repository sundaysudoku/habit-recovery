/// How a scheduled habit went on a given day.
///
/// Stored in the database by [code]; never reorder or reuse codes.
enum CheckInStatus {
  normal(1),
  smaller(2),
  notDone(3);

  const CheckInStatus(this.code);

  final int code;

  static CheckInStatus fromCode(int code) =>
      values.firstWhere((s) => s.code == code);
}
