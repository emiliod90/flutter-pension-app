import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/components/rounded_input_field.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/register.dart';
import 'components/rounded_button.dart';
import 'components/rounded_password_field.dart';
import 'components/text_field_container.dart';
import 'package:fluttertemplateapp/routes.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username;
  String _password;
  bool _showPassword = false;

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() {
    if (validateAndSave()) {
      print("mock auth api call");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    /*Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),*/
                    Image(
                      image: AssetImage('assets/images/rocket1.png'),
                      width: size.width * 0.6,
                    ),
                    TextFieldContainer(
                      color: Colors.lightBlue[100],
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Username",
                          icon: Icon(Icons.person),
                        ),
                        validator: (value) =>
                        value.isEmpty ? "Please provide username" : null,
                        onSaved: (value) => _username = value,
                      ),
                    ),
                    TextFieldContainer(
                      color: Colors.lightBlue[100],
                      child: TextFormField(
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
                        validator: (value) =>
                        value.isEmpty ? "Please provide password" : null,
                        onSaved: (value) => _password = value,
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
                      text: "sign in",
                      textColor: Colors.white,
                      color: Color(0xff751248),
                      press: validateAndSubmit,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Need to Register? ",
                            style: TextStyle(
                                fontSize: 16,
                              color: Colors.white

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
                                color: Colors.white,
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
          ),
        )
    );
  }
}



