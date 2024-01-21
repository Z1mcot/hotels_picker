// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillImpl _$$BillImplFromJson(Map<String, dynamic> json) => _$BillImpl(
      tour: json['tour'] as int,
      fuelFee: json['fuel_fee'] as int,
      serviceFee: json['service_fee'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$BillImplToJson(_$BillImpl instance) =>
    <String, dynamic>{
      'tour': instance.tour,
      'fuel_fee': instance.fuelFee,
      'service_fee': instance.serviceFee,
      'total': instance.total,
    };
