import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/text_field_container.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/login.dart';
import 'components/rounded_button.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightBlue[100],
        //appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        //title: Text("Login"),
        //centerTitle: true,
        //),
        body: SafeArea(
          left: false,
          right: false,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/mobile.png'),
                    width: size.width * 0.6,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.7,
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "When you've received your NAP ID via the post, enter it below "
                      "to start the registration process. ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    color: Colors.lightBlue[300],
                    child: TextField(
                      style: TextStyle(
                          fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "NAP ID",
                        icon: Icon(Icons.account_box),
                      ),
                    ),
                  ),
                  RoundedButton(
                    text: "Start",
                    textColor: Colors.white,
                    color: Colors.red,
                    press: () {},
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already registered? ",
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
