import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  const Epub({
    required this.isAvailable,
  });

  final bool? isAvailable;

  factory Epub.fromJson(Map<String, dynamic> json){
    return Epub(
      isAvailable: json["isAvailable"],
    );
  }

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
  };

  @override
  List<Object?> get props => [
    isAvailable, ];
}