import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(demo_recommendations[0].source!),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
