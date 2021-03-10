import 'package:flutter/material.dart';
import 'package:responsive_instagram/pages/home/widgets/ResponsiveAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size(double.infinity,52),
        child:  ResponsiveAppBar(),
      )
    );
  }
}
