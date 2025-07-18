import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/home_banner.dart';
import 'package:flutter_profile/screens/home/components/my_projects.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/highlight_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlightsInfo(),
        MyProjects(),
      ],
    );
  }
}
