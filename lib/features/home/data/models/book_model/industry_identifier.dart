import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  const IndustryIdentifier({
    required this.type,
    required this.identifier,
  });

  final String? type;
  final String? identifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json){
    return IndustryIdentifier(
      type: json["type"],
      identifier: json["identifier"],
    );
  }

  Map<String, dynamic> toJson() => {
    "type": type,
    "identifier": identifier,
  };

  @override
  List<Object?> get props => [
    type, identifier, ];
}