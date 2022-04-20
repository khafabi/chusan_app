import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'menu_model.g.dart';

@JsonSerializable()
class Menu extends Equatable {
  final String name;
  final String description;
  final String price;
  final String? photo;

  Menu({
    required this.name,
    required this.description,
    required this.price,
    this.photo,
  });

  factory Menu.fromJson(Map<String, dynamic> json) =>
      _$MenuFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  @override
  List<Object?> get props => [name, description, price, photo];

  @override
  Map<String, dynamic> toJson() => _$MenuToJson(this);
}
