// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/display_strings.dart';

part 'sorting_order.freezed.dart';

@freezed
class SortingOrder with _$SortingOrder {
  const factory SortingOrder.byNameAZ() = _ByNameAZ;
  const factory SortingOrder.byNameZA() = _ByNameZA;
  const factory SortingOrder.byIDLowHigh() = _ByIDLowHigh;
  const factory SortingOrder.byIDHighLow() = _ByIDHighLow;
}

extension SortTypeX on SortingOrder {
  bool get isByNameAZ => this == const SortingOrder.byNameAZ();
  bool get isByNameZA => this == const SortingOrder.byNameZA();
  bool get isByIDLowHigh => this == const SortingOrder.byIDLowHigh();
  bool get isByIDHighLow => this == const SortingOrder.byIDHighLow();

  String? get display {
    if (isByNameAZ) {
      return DisplayStrings.sortAZ;
    } else if (isByNameZA) {
      return DisplayStrings.sortZA;
    } else if (isByIDLowHigh) {
      return DisplayStrings.sortIDLowHigh;
    } else if (isByIDHighLow) {
      return DisplayStrings.sortIDHighLow;
    } else {
      return null;
    }
  }
}
