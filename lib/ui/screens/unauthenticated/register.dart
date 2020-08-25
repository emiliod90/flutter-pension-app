import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/register_form_success.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  String _id;

  //String _surname;
  String _birthday;
  String _ni;

  bool _loadingMessage = false;

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
      setState(() {
        _loadingMessage = true;
      });
      // await API call
      // if successful push to register form
      print("success");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return RegisterFormSuccessScreen();
          },
        ),
      );
      // if failed return API response
      print("fail");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
                    size.height * 0.3 - MediaQuery.of(context).padding.top,
                    //color: Colors.grey,
                    child: Container(
                        width: size.width - 64,
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Register",
                          style: Theme.of(context).textTheme.headline4,
                        )),
                  ),
                  Container(
                    height: size.height * 0.5,
                    //color: Colors.blue,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: size.width - 64 - 48,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Nest ID',
                                    labelStyle: TextStyle(fontSize: 18),
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(RegExp(r"\s"))
                                  ],
                                  validator: (value) => value.isEmpty
                                      ? "Please provide ID"
                                      : null,
                                  onSaved: (value) => _id = value,
                                ),
                              ),
                              Container(
                                width: 48,
                                child: IconButton(
                                  icon: Icon(Icons.info_outline),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width - 64 - 48,
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Date of Birth',
                                labelStyle: TextStyle(fontSize: 18),
                                hintText: "DD/MM/YYYY"),
                            keyboardType: TextInputType.datetime,
                            maxLength: 10,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp(r"\s")),
                            ],
                            validator: (value) => value.isEmpty
                                ? "Please provide DOB"
                                : (!RegExp(r"^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$")
                                .hasMatch(value)
                                ? "Date format not correct"
                                : null),
                            onSaved: (value) => _birthday = value,
                          ),
                        ),
                        /*Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Surname',
                              labelStyle: TextStyle(fontSize: 18),
                            ),
                            validator: (value) => value.isEmpty
                                ? "Please provide last name"
                                : null,
                            onSaved: (value) => _surname = value,
                          ),
                        ),*/
                        Row(
                          children: <Widget>[
                            Container(
                              width: size.width - 64 - 48,
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'N.I. number or Alternative ID',
                                  labelStyle: TextStyle(fontSize: 18),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r"\s")),
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r"[a-zA-Z0-9]+"))
                                ],
                                validator: (value) => value.isEmpty
                                    ? "Please provide NI"
                                    : (value.length != 9
                                    ? "9 characters required"
                                    : null),
                                onSaved: (value) => _ni = value,
                              ),
                            ),
                            Container(
                              width: 48,
                              child: IconButton(
                                icon: Icon(Icons.info_outline),
                                onPressed: () {},
                              ),
                            )
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
                                  : Text("Next")),
                            )),
                        SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RegisterScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Back to Sign In",
                            style: TextStyle(
                              //fontSize: 16,
                              //color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
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
