import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/routes.dart';
import 'package:fluttertemplateapp/theme.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(dark),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: "Prototype App",
      theme: theme.getTheme(),
      home: LoginScreen(),
    );
  }
}
