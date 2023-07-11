// ignore_for_file: public_member_api_docs, no-magic-number

extension NumX on num {
  String formatMeter() => '${(this / 10).toStringAsFixed(1)}m';

  String formatKilogram() => '${(this / 10).toStringAsFixed(1)}kg';
}
