import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/theme.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00515e),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Large Text",

                  ),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Dark Theme",

                  ),
                  trailing: Switch(
                    value: true,
                  ),
                ),
                FlatButton(
                  child: const Text('Light Mode'),
                  onPressed: () => _themeChanger.setTheme(light),
                ),
                FlatButton(
                  child: const Text('Dark Mode'),
                  onPressed: () => _themeChanger.setTheme(dark),
                ),
                FlatButton(
                  child: const Text('Cool Mode'),
                  onPressed: () => _themeChanger.setTheme(cool),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
