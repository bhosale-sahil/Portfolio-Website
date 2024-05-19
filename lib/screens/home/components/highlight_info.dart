import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

import 'high_light.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: '+',
                      ),
                      label: 'Software Projects',
                    ),

                  ],
                ),
                SizedBox(height: defaultPadding,),
                Row(
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 5,
                        text: '+',
                      ),
                      label: 'Hardware Projects',
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                        value: 2,
                        text: '+',
                      ),
                      label: 'Internships',),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: '+',
                  ),
                  label: 'Software Projects',
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: '+',
                  ),
                  label: 'Hardware Projects',
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 2,
                    text: '+',
                  ),
                  label: 'Internships',
                ),
              ],
            ),
    );
  }
}
