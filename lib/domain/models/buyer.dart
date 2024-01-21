import 'package:freezed_annotation/freezed_annotation.dart';

part 'buyer.freezed.dart';
part 'buyer.g.dart';

@freezed
class Buyer with _$Buyer {
  factory Buyer({
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String email,
  }) = _Buyer;

  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);
}
