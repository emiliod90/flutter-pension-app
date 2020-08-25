import 'package:flutter/material.dart';
//import 'package:fluttertemplateapp/ui/screens/unauthenticated/components/rounded_button.dart';
//import 'package:fluttertemplateapp/ui/screens/unauthenticated/mobile_form.dart';
import 'package:flutter/services.dart';

import 'account_success.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = false;
  bool _showPassword = true;
  String _email;
  String _password;
  String _mobile;
  bool _loadingMessage = false;

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return AccountSuccessScreen();
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
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Create login credentials",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height:
                    size.height * 0.2 - MediaQuery.of(context).padding.top - kToolbarHeight,
                    //color: Colors.grey,
                    child: Container(
                      width: size.width - 64,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Container(
                    height: size.height * 0.6,
                    //color: Colors.blue,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Container(
                            width: size.width - 64,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: '*Mobile no.',
                                labelStyle: TextStyle(fontSize: 18),
                              ),
                              keyboardType: TextInputType.numberWithOptions(),
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r"\s")),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              validator: (value) => value.isEmpty
                                  ? "Please provide Mobile no."
                                  : null,
                              onSaved: (value) => _email = value,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Container(
                            width: size.width - 64,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 18),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r"\s"))
                              ],
                              validator: (value) => value.isEmpty
                                  ? "Please provide Email"
                                  : null,
                              onSaved: (value) => _email = value,
                            ),
                          ),
                        ),
                        Container(
                          width: size.width - 64,
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            obscureText: _showPassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(fontSize: 18),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye),
                                onPressed: () {
                                  setState(() => _showPassword = !_showPassword);
                                },
                              ),
                            ),
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp(r"\s")),
                              FilteringTextInputFormatter.allow(
                                  RegExp(r"[a-zA-Z0-9]+"))
                            ],
                            validator: (value) => value.isEmpty
                                ? "Please create password"
                                : (value.length < 6
                                ? "Must be > 6 characters"
                                : null),
                            onSaved: (value) => _password = value,
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: _agreedToTOS,
                              onChanged: _setAgreedToTOS,
                            ),
                            GestureDetector(
                              onTap: () => _setAgreedToTOS(!_agreedToTOS),
                              child: const Text(
                                'I agree to the Terms of Services',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.2 -
                        -MediaQuery.of(context).padding.bottom,
                    //color: Colors.grey,
                    alignment: Alignment.center,
                    child: Column(
                      children: <Widget>[
                        Container(
                            width: size.width - 64,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                gradient: LinearGradient(colors: [Color(0xFFFE6B8B), Color(0xFFFF8E53)])
                            ),
                            child: RaisedButton(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                                /*side: BorderSide(color: color)*/),
                              onPressed: validateAndSubmit,
                              child: (_loadingMessage
                                  ? Text("Please wait...")
                                  : Text("Sign Up")),
                            )),
                        /*SizedBox(height: 32,),
                        Text(
                          "Back to Sign In"
                        ),*/
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
