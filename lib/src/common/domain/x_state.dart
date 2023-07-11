// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'x_state.freezed.dart';

@freezed
class XState<T> with _$XState {
  const factory XState.initial() = _Initial;
  const factory XState.loading() = _Loading;
  const factory XState.loadingMore() = _LoadingMore;
  const factory XState.empty() = _Empty;
  const factory XState.success() = _Success;
  const factory XState.error({T? failure}) = _Error;
}

extension XStateX on XState {
  bool get isInitial => this is _Initial;
  bool get isLoading => this is _Loading;
  bool get isLoadingMore => this is _LoadingMore;
  bool get isEmpty => this is _Empty;
  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;
}
