// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:responsive/responsive_mobile.dart';
import 'package:responsive/responsive_desktop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive screen',
      home: Builder(builder: (context) {
        if (MediaQuery.of(context).size.width <= 600) {
          return MediaQuery(
            child: ResponsiveMobileScreen(),
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.25),
          );
        }
        return MediaQuery(
          child: ResponsiveDesktopScreen(),
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.6),
        );
      }),
    );
  }
}
