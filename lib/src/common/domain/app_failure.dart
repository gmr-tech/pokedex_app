// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
class AppFailure<T> with _$AppFailure<T> {
  const factory AppFailure.notFound() = notFound;
  const factory AppFailure.unexpected({T? object}) = _Unexpected;
  const factory AppFailure.permissionDenied() = permitionDenied;
}
