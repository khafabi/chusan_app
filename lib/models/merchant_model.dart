import 'package:chusan_app/models/barrel_model.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'merchant_model.g.dart';

@JsonSerializable()
class Merchant extends Equatable {
  /// Int
  final int id;
  final int merch_capacity;

  /// String
  final String address_link;
  final String address_detail;
  final String business_tagline;
  final String close_day;
  final String close_hour;
  final String contact_number;
  final String merch_description;
  final List<String> merch_facilities;
  final List<String> merch_gallery;
  final String merch_name;
  final List<String> merch_payments;
  final String merch_photo;
  final String merch_reaches;
  final String open_day;
  final String open_hour;

  /// Other
  final List<Menu> merch_menu;
  final UserModel merch_owner;

  Merchant({
    required this.id,
    required this.merch_capacity,
    required this.address_link,
    required this.address_detail,
    required this.business_tagline,
    required this.close_day,
    required this.close_hour,
    required this.contact_number,
    required this.merch_description,
    required this.merch_facilities,
    required this.merch_gallery,
    required this.merch_name,
    required this.merch_payments,
    required this.merch_photo,
    required this.merch_reaches,
    required this.open_day,
    required this.open_hour,
    required this.merch_menu,
    required this.merch_owner,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$MerchantFromJson(json);

  @override
  List<Object?> get props => [
        id,
        merch_capacity,
        address_link,
        address_detail,
        business_tagline,
        close_day,
        close_hour,
        contact_number,
        merch_description,
        merch_facilities,
        merch_gallery,
        merch_name,
        merch_payments,
        merch_photo,
        merch_reaches,
        open_day,
        open_hour,
        merch_menu,
        merch_owner,
      ];

  @override
  Map<String, dynamic> toJson() => _$MerchantToJson(this);
}
