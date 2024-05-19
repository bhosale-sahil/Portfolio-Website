import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Recommendations',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding/2),
                  child: RecommendationCard(recommendation: demo_recommendations[index],),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}