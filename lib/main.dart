import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/routes.dart';
//import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Prototype App",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: PublicRoute(),
    );
  }
}
