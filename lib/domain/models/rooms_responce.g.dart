// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomsImpl _$$RoomsImplFromJson(Map<String, dynamic> json) => _$RoomsImpl(
      rooms: (json['rooms'] as List<dynamic>?)
              ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RoomsImplToJson(_$RoomsImpl instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };
