// ignore_for_file: public_member_api_docs

extension IntX on int {
  String formatID() {
    return '#${toString().padLeft(3, '0')}';
  }
}
