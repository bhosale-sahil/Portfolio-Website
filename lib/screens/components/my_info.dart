import 'package:flutter/material.dart';
class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            CircleAvatar(radius: 50,backgroundImage: AssetImage('assets/images/myimg.jpg'),),
            Spacer(),
            Text('Sahil Bhosale',style: Theme.of(context).textTheme.titleSmall,),
            Text('Software Developer & Engineer',style: TextStyle(fontWeight: FontWeight.w200,height: 1.5),),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
