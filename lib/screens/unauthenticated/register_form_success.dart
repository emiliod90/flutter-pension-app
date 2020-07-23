import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/create_account.dart';

import 'components/rounded_button.dart';

class RegisterFormSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlue,
        //appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        //title: Text("Login"),
        //centerTitle: true,
        //),
        body: SafeArea(
          left: false,
          right: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/rocket1.png'),
                  height: size.width * 0.6,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Success!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.only(top: 5),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 18, height: 1.5, color: Colors.black87),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "We found your details! Here are the next steps to activate your account:")
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "1. Create a username and password",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
                Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "2. Pair your mobile or tablet device",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
                RoundedButton(
                  text: "continue",
                  textColor: Colors.white,
                  color: Colors.purple,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CreateAccountScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}