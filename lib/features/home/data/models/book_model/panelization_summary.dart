import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  const PanelizationSummary({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json){
    return PanelizationSummary(
      containsEpubBubbles: json["containsEpubBubbles"],
      containsImageBubbles: json["containsImageBubbles"],
    );
  }

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };

  @override
  List<Object?> get props => [
    containsEpubBubbles, containsImageBubbles, ];
}