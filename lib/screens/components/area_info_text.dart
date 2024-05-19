import 'package:flutter/material.dart';
import '../../constants.dart';
class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    required this.title,
    required this.text,
  });

  final String? title, text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
