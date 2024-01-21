import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist.freezed.dart';
part 'tourist.g.dart';

@freezed
class Tourist with _$Tourist {
  factory Tourist({
    @JsonKey(name: 'first_name') required String firstName,
    required String surname,
    required DateTime birthdate,
    required String citizenship,
    @JsonKey(name: 'passport_number') required String passportNumber,
    @JsonKey(name: 'passport_expiry_date') required DateTime passportExpiryDate,
  }) = _Tourist;

  factory Tourist.fromJson(Map<String, dynamic> json) =>
      _$TouristFromJson(json);
}
