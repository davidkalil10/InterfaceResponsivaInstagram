import 'package:flutter/material.dart';
import 'package:responsive_instagram/pages/home/widgets/PostWidget.dart';
import 'package:responsive_instagram/pages/home/widgets/ResponsiveAppBar.dart';
import 'package:responsive_instagram/pages/home/widgets/RightPanel.dart';
import 'package:responsive_instagram/pages/home/widgets/StoriesList.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar:PreferredSize(
        preferredSize: Size(double.infinity,52),
        child:  ResponsiveAppBar(),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: Row(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget(),
                  ],
                ),
              ),
              RightPanel(),
            ],
          ),

        ),
      ),
    );
  }
}
