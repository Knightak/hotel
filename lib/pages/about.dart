import 'dart:collection';
import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_test1/pages/home_page.dart';
import 'package:flutter_test1/temp_db.dart';

class aboutPage extends StatefulWidget {
  static const String routeName = '/about';
  const aboutPage({super.key});

  @override
  State<aboutPage> createState() => _aboutPageState();
}

class _aboutPageState extends State<aboutPage> {
  late String url;

  @override
  void didChangeDependencies() {
    url = ModalRoute.of(context)!.settings.arguments as String;
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('About'),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Ábout'),
              background: Image.network(
                hotelImag[0],
                width: double.maxFinite,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Text(description[1]),
            ]),
          ),
        ],
      ),
    );
  }
}
