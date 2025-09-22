extension StringExtensions on String {
  DateTime convertDate() {
    return DateTime.parse(this);
  }
}
