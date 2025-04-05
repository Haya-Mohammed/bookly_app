import 'package:equatable/equatable.dart';

class ImageLinks extends Equatable {
  const ImageLinks({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  final String smallThumbnail;
  final String thumbnail;

  factory ImageLinks.fromJson(Map<String, dynamic> json){
    return ImageLinks(
      smallThumbnail: json["smallThumbnail"],
      thumbnail: json["thumbnail"],
    );
  }

  Map<String, dynamic> toJson() => {
    "smallThumbnail": smallThumbnail,
    "thumbnail": thumbnail,
  };

  @override
  List<Object?> get props => [
    smallThumbnail, thumbnail, ];
}