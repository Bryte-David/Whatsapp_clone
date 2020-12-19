import 'package:flutter/material.dart';

import 'WhatsApp_home.dart';

void main() => runApp(
  MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        accentColor: new Color(0xff25D366),
        primaryColor: new Color(0xff075E54),
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}