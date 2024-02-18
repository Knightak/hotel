import 'package:flutter/material.dart';

class contactPage extends StatefulWidget {
  static const String routeName = '/contact';
  const contactPage({super.key});

  @override
  State<contactPage> createState() => _contactPageState();
}

class _contactPageState extends State<contactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact US'),
        backgroundColor: Colors.black12,
        titleTextStyle: TextStyle(color: Colors.green),
      ),
      body: Container(
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Fist Name',
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
