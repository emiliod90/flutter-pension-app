import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/authenticated/home.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/login.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/register.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/register_form.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/welcome.dart';
//import 'package:provider/provider.dart';


class RootRoute extends StatefulWidget {
  @override
  _RootRouteState createState() => _RootRouteState();
}

class _RootRouteState extends State<RootRoute> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class PublicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}

class PrivateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
