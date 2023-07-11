// ignore_for_file: public_member_api_docs, avoid-substring

extension StringX on String {
  String capitalizeFirst() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.capitalizeFirst())
      .join(' ');

  String addInfoChar() => '\u24D8 $this';
}
