import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/theme.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(cool),
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
      //theme: theme.getTheme(),
      theme: ThemeData(
          brightness: Brightness.dark,
          textTheme: TextTheme(
            bodyText1: TextStyle(
                fontSize: 18.0
            ),
            bodyText2: TextStyle(
                fontSize: 16.0
            ),
            button: TextStyle(
                fontSize: 18.0
            ),
          )

      ),
      darkTheme: dark,
      home: LoginScreen(),
    );
  }
}
