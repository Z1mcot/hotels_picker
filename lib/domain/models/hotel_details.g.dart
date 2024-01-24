// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelDetailsImpl _$$HotelDetailsImplFromJson(Map<String, dynamic> json) =>
    _$HotelDetailsImpl(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HotelDetailsImplToJson(_$HotelDetailsImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
