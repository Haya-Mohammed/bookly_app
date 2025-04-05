import 'package:bookly_app/features/home/data/models/book_model/access_info.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/search/data/models/search_info.dart';

import 'sale_info.dart';
import 'volume_info.dart';

class BookModel extends BookEntity {
  final String? kind;
  final String id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo searchInfo;

  BookModel({
    required this.kind,
    required this.id,
    required this.etag,
    required this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
    required this.searchInfo,
  }) : super(
          bookId: id,
          image: volumeInfo?.imageLinks?.thumbnail ?? '',
          title: volumeInfo?.title ?? 'No title',
          authorName: volumeInfo?.authors?.first ?? 'No author',
          price: 0.0,
          rating: 5.0,
        );

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      kind: json["kind"],
      id: json["id"],
      etag: json["etag"],
      selfLink: json["selfLink"],
      volumeInfo: json["volumeInfo"] == null
          ? null
          : VolumeInfo.fromJson(json["volumeInfo"]),
      saleInfo:
          json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]),
      accessInfo: json["accessInfo"] == null
          ? null
          : AccessInfo.fromJson(json["accessInfo"]),
      searchInfo: SearchInfo.fromJson(json["searchInfo"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "id": id,
        "etag": etag,
        "selfLink": selfLink,
        "volumeInfo": volumeInfo?.toJson(),
        "saleInfo": saleInfo?.toJson(),
        "accessInfo": accessInfo?.toJson(),
        "searchInfo": searchInfo.toJson(),
      };

  @override
  List<Object?> get props => [
        kind,
        id,
        etag,
        selfLink,
        volumeInfo,
        saleInfo,
        accessInfo,
        searchInfo,
      ];
}
