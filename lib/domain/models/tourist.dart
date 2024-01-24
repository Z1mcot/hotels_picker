import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist.freezed.dart';
part 'tourist.g.dart';

@freezed
class Tourist with _$Tourist {
  const factory Tourist({
    @JsonKey(name: 'first_name') String? firstName,
    String? surname,
    DateTime? birthdate,
    String? citizenship,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'passport_expiry_date') DateTime? passportExpiryDate,
  }) = _Tourist;

  factory Tourist.fromJson(Map<String, dynamic> json) =>
      _$TouristFromJson(json);
}
