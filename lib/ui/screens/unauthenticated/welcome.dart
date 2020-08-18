import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/register.dart';

import 'components/rounded_button.dart';
import 'login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff28465f),
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
                  image: AssetImage('assets/images/rocket2.png'), height: size.width * 0.5,
                ),
                /*Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.black54,
                        //fontFamily: 'Indie Flower',
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),*/
                SizedBox(height: size.height * 0.05,),
                RoundedButton(
                  text: "login",
                  textColor: Colors.white,
                  color: Color(0xff751248) ,
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                RoundedButton(
                  text: "register",
                  textColor: Colors.white,
                  color: Color(0xff00515e),
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
