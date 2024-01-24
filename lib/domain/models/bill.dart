import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill.freezed.dart';
part 'bill.g.dart';

@freezed
class Bill with _$Bill {
  const factory Bill({
    required int tour,
    @JsonKey(name: 'fuel_fee') required int fuelFee,
    @JsonKey(name: 'service_fee') required int serviceFee,
    required int total,
  }) = _Bill;

  factory Bill.fromJson(Map<String, dynamic> json) => _$BillFromJson(json);
}
