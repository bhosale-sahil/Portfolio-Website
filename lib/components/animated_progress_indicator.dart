import 'package:flutter/material.dart';
import '../constants.dart';
class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.label,
  });

  final String label;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + '%',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key, required this.percentage, required this.lang,
  });

  final double percentage;
  final String lang;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context,double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(lang,style: TextStyle(color: Colors.white),),
                Text((value*100).toInt().toString()+'%'),
              ],
            ),
            SizedBox(height: defaultPadding/2,),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
