import 'package:flutter/material.dart';
import 'package:flutter_test1/pages/about.dart';
import 'package:flutter_test1/pages/contact.dart';
import 'package:flutter_test1/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'List View';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      initialRoute: home_page.routeName,
      routes: {
        home_page.routeName: (context) => home_page(),
        aboutPage.routeName: (context) => aboutPage(),
        contactPage.routeName: (context) => contactPage(),
      },
    );
  }
}
