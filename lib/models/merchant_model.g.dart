// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map<String, dynamic> json) => Merchant(
      id: json['id'] as int,
      merch_capacity: json['merch_capacity'] as int,
      address_link: json['address_link'] as String,
      address_detail: json['address_detail'] as String,
      business_tagline: json['business_tagline'] as String,
      close_day: json['close_day'] as String,
      close_hour: json['close_hour'] as String,
      contact_number: json['contact_number'] as String,
      merch_description: json['merch_description'] as String,
      merch_facilities: (json['merch_facilities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      merch_gallery: (json['merch_gallery'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      merch_name: json['merch_name'] as String,
      merch_payments: (json['merch_payments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      merch_photo: json['merch_photo'] as String,
      merch_reaches: json['merch_reaches'] as String,
      open_day: json['open_day'] as String,
      open_hour: json['open_hour'] as String,
      merch_menu: (json['merch_menu'] as List<dynamic>)
          .map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      merch_owner:
          UserModel.fromJson(json['merch_owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'id': instance.id,
      'merch_capacity': instance.merch_capacity,
      'address_link': instance.address_link,
      'address_detail': instance.address_detail,
      'business_tagline': instance.business_tagline,
      'close_day': instance.close_day,
      'close_hour': instance.close_hour,
      'contact_number': instance.contact_number,
      'merch_description': instance.merch_description,
      'merch_facilities': instance.merch_facilities,
      'merch_gallery': instance.merch_gallery,
      'merch_name': instance.merch_name,
      'merch_payments': instance.merch_payments,
      'merch_photo': instance.merch_photo,
      'merch_reaches': instance.merch_reaches,
      'open_day': instance.open_day,
      'open_hour': instance.open_hour,
      'merch_menu': instance.merch_menu,
      'merch_owner': instance.merch_owner,
    };
