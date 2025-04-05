import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  const SaleInfo({
    required this.country,
    required this.saleability,
    required this.isEbook,
  });

  final String? country;
  final String? saleability;
  final bool? isEbook;

  factory SaleInfo.fromJson(Map<String, dynamic> json){
    return SaleInfo(
      country: json["country"],
      saleability: json["saleability"],
      isEbook: json["isEbook"],
    );
  }

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
  };

  @override
  List<Object?> get props => [
    country, saleability, isEbook, ];
}