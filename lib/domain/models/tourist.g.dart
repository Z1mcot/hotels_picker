// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TouristImpl _$$TouristImplFromJson(Map<String, dynamic> json) =>
    _$TouristImpl(
      firstName: json['first_name'] as String,
      surname: json['surname'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
      citizenship: json['citizenship'] as String,
      passportNumber: json['passport_number'] as String,
      passportExpiryDate:
          DateTime.parse(json['passport_expiry_date'] as String),
    );

Map<String, dynamic> _$$TouristImplToJson(_$TouristImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'surname': instance.surname,
      'birthdate': instance.birthdate.toIso8601String(),
      'citizenship': instance.citizenship,
      'passport_number': instance.passportNumber,
      'passport_expiry_date': instance.passportExpiryDate.toIso8601String(),
    };
