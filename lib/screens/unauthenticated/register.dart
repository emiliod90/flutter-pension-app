import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/text_field_container.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/login.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/register_form.dart';
import 'components/rounded_button.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _id;

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
      // await API call


      // if successful push to register form
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return RegisterFormScreen();
          },
        ),
      );
      // if failed return API response
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              child: Form(
                key: _formKey,
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
                      color: Colors.lightBlue[100],
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 18,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "NAP ID",
                          icon: Icon(Icons.account_box),
                        ),
                        validator: (value) =>
                        value.isEmpty ? "Please provide ID" : null,
                        onSaved: (value) => _id = value,
                      ),
                    ),
                    RoundedButton(
                      text: "Start",
                      textColor: Colors.white,
                      color: Colors.purple,
                      press: validateAndSubmit,
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
          ),
        ));
  }
}
