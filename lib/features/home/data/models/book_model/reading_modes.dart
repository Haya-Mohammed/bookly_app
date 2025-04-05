import 'package:equatable/equatable.dart';

class ReadingModes extends Equatable {
  const ReadingModes({
    required this.text,
    required this.image,
  });

  final bool? text;
  final bool? image;

  factory ReadingModes.fromJson(Map<String, dynamic> json){
    return ReadingModes(
      text: json["text"],
      image: json["image"],
    );
  }

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };

  @override
  List<Object?> get props => [
    text, image, ];
}