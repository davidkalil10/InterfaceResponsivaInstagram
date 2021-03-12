import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4"),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "davidkalil10",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.white
                  ),
                ),Text(
                  "David Kalil",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){},
              child: Text(
                "Ligar",
                style: TextStyle(
                  color: Color(0xff0396f6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
