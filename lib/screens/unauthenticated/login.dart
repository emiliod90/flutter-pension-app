import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/rounded_input_field.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/register.dart';
import 'components/rounded_button.dart';
import 'components/rounded_password_field.dart';
import 'components/text_field_container.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username;
  String _password;
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/images/rocket1.png'),
                    width: size.width * 0.6,
                  ),
                  TextFieldContainer(
                    color: Colors.lightBlue[100],
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username",
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  TextFieldContainer(
                    color: Colors.lightBlue[100],
                    child: TextField(
                      obscureText: _showPassword,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye),
                            onPressed: () {
                              setState(() => _showPassword = !_showPassword);
                            },
                          )
                      ),
                    ),
                  ),
                  //RoundedInputField(
                  //color: Colors.lightBlue[100],
                  //hintText: "Username",
                  //onSubmitted: (value) {},
                  //),
                  //RoundedPasswordField(
                  //color: Colors.lightBlue[100],
                  //hintText: "Password",
                  //onChanged: (value) {},
                  //icon: Icons.lock,
                  //),
                  RoundedButton(
                    text: "login",
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
                          "Need to Register? ",
                          style: TextStyle(
                              fontSize: 16

                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RegisterScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
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
        )
    );
  }
}



