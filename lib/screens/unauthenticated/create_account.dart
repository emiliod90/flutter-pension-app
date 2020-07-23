import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/rounded_button.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/mobile_form.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = false;
  bool _showPassword = false;
  String _username;
  String _password;

  void _setAgreedToTOS(bool newValue) {
    setState(() {
      _agreedToTOS = newValue;
    });
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Please agree to T&Cs"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "OK",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.lightBlue[600],
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate() & _agreedToTOS) {
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
            return MobileFormScreen();
          },
        ),
      );
    } else if (!_agreedToTOS) {
      print("agree to TOS");
      createAlertDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Create login credentials",
            style: TextStyle(color: Colors.black45),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Wrap(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 18,
                                          height: 1.5,
                                          color: Colors.black45),
                                      children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "Create a username and password. You can use these same credentials to"
                                            " login via the app or online.")
                                  ])),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Provide Email",
                            icon: Icon(Icons.person)),
                        validator: (value) =>
                            value.isEmpty ? "Need Email" : null,
                        onSaved: (value) => _username = value,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Create a Password",
                            icon: Icon(Icons.account_box),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {
                                setState(() => _showPassword = !_showPassword);
                              },
                            )),
                        validator: (value) =>
                            value.isEmpty ? "Please provide password" : null,
                        onSaved: (value) => _password = value,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Re-type Password",
                            icon: Icon(Icons.account_box),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye),
                              onPressed: () {
                                setState(() => _showPassword = !_showPassword);
                              },
                            )),
                        validator: (value) =>
                            value.isEmpty ? "Please provide password" : null,
                        onSaved: (value) => _password = value,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          value: _agreedToTOS,
                          onChanged: _setAgreedToTOS,
                        ),
                        GestureDetector(
                          onTap: () => _setAgreedToTOS(!_agreedToTOS),
                          child: const Text(
                            'I agree to the Terms of Services and Privacy Policy',
                          ),
                        ),
                      ],
                    ),
                    RoundedButton(
                      text: "Create Account",
                      press: validateAndSubmit,
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
