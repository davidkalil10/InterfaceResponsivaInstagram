import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_instagram/pages/home/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context,widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 450,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE), /*De 450 pra baixo da um resize pra deixar melhor na tela dos celulares menores*/
          ResponsiveBreakpoint.resize(700, name: TABLET), /*De 450 pra baixo da um resize pra deixar melhor na tela dos celulares menores*/
          ResponsiveBreakpoint.resize(800, name: DESKTOP), /*De 450 pra baixo da um resize pra deixar melhor na tela dos celulares menores*/

        ]
      ),
      home: HomePage(),
    );
  }
}
