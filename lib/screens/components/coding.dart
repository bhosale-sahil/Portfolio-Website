import 'package:flutter/material.dart';

import '../../components/animated_progress_indicator.dart';
import '../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.9,lang: 'Dart',),
        AnimatedLinearProgressIndicator(percentage: 0.95,lang: 'Python',),
        AnimatedLinearProgressIndicator(percentage: 0.9,lang: 'C++',),
        AnimatedLinearProgressIndicator(percentage: 0.9,lang: 'HTML',),
        AnimatedLinearProgressIndicator(percentage: 0.57,lang: 'CSS',),
        AnimatedLinearProgressIndicator(percentage: 0.8,lang: 'Javascript',),
      ],
    );
  }
}
