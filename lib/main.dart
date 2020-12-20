import 'package:assignment_1_facebook_posts/screens/detailPage.dart';
import 'package:assignment_1_facebook_posts/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      routes: {
        '/home': (context) => Home(),
        '/detail': (context) => Detail(),
      },
    );
  }
}
