import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_instagram/pages/home/widgets/SuggestionItem.dart';

class RightPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET)
      ],
      replacement: Container(),
      child: Container(
        margin: EdgeInsets.fromLTRB(35, 56, 20, 0),
        width: 300,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/26725709?s=400&u=be4081cab6eb380055c2846bab9e18b5b5681b58&v=4"),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "davidkalil10",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "David Kalil",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey
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
                      "Sair",
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
            SizedBox(height:24 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sugestões para você",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[500],

                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){},
                    child: Text(
                      "Ver tudo",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,color: Colors.white
                      ),
                    )
                  ),
                )
              ],
            ),
            SizedBox(height: 8,),
            SuggestionItem(),
            SuggestionItem(),
            SuggestionItem(),
          ],
        ),
      ),
    );
  }
}
