import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  const VolumeInfo({
    required this.title,
    required this.authors,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
  });

  final String title;
  final List<String> authors;
  final DateTime? publishedDate;
  final String? description;
  final List<IndustryIdentifier> industryIdentifiers;
  final ReadingModes? readingModes;
  final num? pageCount;
  final String? printType;
  final List<String> categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  factory VolumeInfo.fromJson(Map<String, dynamic> json){
    return VolumeInfo(
      title: json["title"],
      authors: json["authors"] == null ? [] : List<String>.from(json["authors"]!.map((x) => x)),
      publishedDate: DateTime.tryParse(json["publishedDate"] ?? ""),
      description: json["description"],
      industryIdentifiers: json["industryIdentifiers"] == null ? [] : List<IndustryIdentifier>.from(json["industryIdentifiers"]!.map((x) => IndustryIdentifier.fromJson(x))),
      readingModes: json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]),
      pageCount: json["pageCount"],
      printType: json["printType"],
      categories: json["categories"] == null ? [] : List<String>.from(json["categories"]!.map((x) => x)),
      maturityRating: json["maturityRating"],
      allowAnonLogging: json["allowAnonLogging"],
      contentVersion: json["contentVersion"],
      panelizationSummary: json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]),
      imageLinks: json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]),
      language: json["language"],
      previewLink: json["previewLink"],
      infoLink: json["infoLink"],
      canonicalVolumeLink: json["canonicalVolumeLink"],
    );
  }

  Map<String, dynamic> toJson() => {
    "title": title,
    "authors": authors.map((x) => x).toList(),
    "publishedDate": "${publishedDate!.year.toString().padLeft(4,'0')}-${publishedDate!.month.toString().padLeft(2,'0')}-${publishedDate!.day.toString().padLeft(2,'0')}",
    "description": description,
    "industryIdentifiers": industryIdentifiers.map((x) => x.toJson()).toList(),
    "readingModes": readingModes?.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": categories.map((x) => x).toList(),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary?.toJson(),
    "imageLinks": imageLinks?.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
  };

  @override
  List<Object?> get props => [
    title, authors, publishedDate, description, industryIdentifiers, readingModes, pageCount, printType, categories, maturityRating, allowAnonLogging, contentVersion, panelizationSummary, imageLinks, language, previewLink, infoLink, canonicalVolumeLink, ];
}