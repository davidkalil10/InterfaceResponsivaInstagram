import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 66,width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.green
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          child: Container(
            alignment: Alignment.center,
            height: 60,width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black
            ),
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4"),
            ),
          ),
        ),
        Text(
          "davidkalil10",
          style: TextStyle(
            fontSize: 12,color: Colors.white
          ),
        )

      ],
    );
  }
}
