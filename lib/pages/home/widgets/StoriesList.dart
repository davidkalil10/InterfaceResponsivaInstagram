import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_instagram/pages/home/widgets/StoryCircle.dart';

class StoriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      height: 110,
      margin: EdgeInsets.only(top: mobile? 15 : 35 ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        separatorBuilder: (_,__) => SizedBox(width: 16,),
        itemCount: 16,
        itemBuilder: (_,index){
          return StoryCircle();
        },
      ),
    );
  }
}
