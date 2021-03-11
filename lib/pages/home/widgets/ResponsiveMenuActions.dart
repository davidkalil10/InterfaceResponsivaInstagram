import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.smallerThan(name: TABLET),
          ],
          child: IconButton(icon: Icon(Icons.search), onPressed: (){}),
        ),
        SizedBox(width: 4,),
        IconButton(icon: Icon(Icons.home), onPressed: (){}),
        SizedBox(width: 4,),
        IconButton(icon: Icon(Icons.send), onPressed: (){}),
        SizedBox(width: 4,),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),
        SizedBox(width: 4,),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4"),
        )
      ],
    );
  }
}
