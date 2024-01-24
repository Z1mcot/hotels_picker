import 'package:flutter/material.dart';
import 'package:hotels_picker/ui/common_widgets/feature_widget.dart';

class FeatureWrap extends StatelessWidget {
  final List<String> features;
  const FeatureWrap({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    final featuresWidgets = <Widget>[];
    final sortedFeatures = List.from(features);
    sortedFeatures.sort(
      (a, b) => b.length.compareTo(a.length),
    );

    for (var feature in sortedFeatures) {
      featuresWidgets.add(
        FeatureWidget(name: feature),
      );
    }

    return Wrap(
      runAlignment: WrapAlignment.spaceEvenly,
      spacing: 8,
      runSpacing: 8,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      children: featuresWidgets,
    );
  }
}
