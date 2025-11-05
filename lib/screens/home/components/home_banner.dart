import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/bg.jpeg',
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withValues(alpha: 0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get to know about me!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                MyBuildAnimatedText(),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     style: TextButton.styleFrom(
                //         padding: EdgeInsets.symmetric(
                //             horizontal: defaultPadding * 2,
                //             vertical: defaultPadding),
                //         backgroundColor: primaryColor),
                //     onPressed: () {},
                //     child: Text(
                //       'EXPLORE NOW',
                //       style: TextStyle(color: darkColor),
                //     ),
                //   )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text('I built '),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'responsive web apps',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'industrial autonomous robotic systems',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'realtime chat app using firebase',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'social media app for professionals',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'app for managing tenant duties',
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'live bitcoin rate app',
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(
            text: '/',
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: '>')
        ],
      ),
    );
  }
}
