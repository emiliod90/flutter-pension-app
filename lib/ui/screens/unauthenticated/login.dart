import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertemplateapp/services/login_api.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/register.dart';
import 'package:fluttertemplateapp/routes.dart';

// Dummy API https://reqres.in/
// username: eve.holt@reqres.in
// password cityslicka

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username;
  String _password;
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

  void validateAndSubmit() async {
    if (validateAndSave()) {
      print("mock auth api call");
      setState(() {
        _loadingMessage = true;
      });
      var rsp = await loginUser(_username, _password);
      print(rsp["token"]);
      if (rsp["token"] != null) {
        setState(() {
          _loadingMessage = false;
        });
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      }
      else
        print("fail");
      setState(() {
        _loadingMessage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
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
                          "Welcome",
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
                                    prefixIcon: Icon(Icons.perm_identity),
                                    labelText: 'Username',
                                    labelStyle: TextStyle(fontSize: 18),
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r"\s"))
                                  ],
                                  validator: (value) => value.isEmpty
                                      ? "Please provide username"
                                      : null,
                                  onSaved: (value) => _username = value,
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
                        Row(
                          children: <Widget>[
                            Container(
                              width: size.width - 64 - 48,
                              padding: EdgeInsets.symmetric(vertical: 4.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.vpn_key),
                                  labelText: 'Password',
                                  labelStyle: TextStyle(fontSize: 18),
                                ),
                                obscureText: true,
                                validator: (value) => value.isEmpty
                                    ? "Please provide Password"
                                    : null,
                                onSaved: (value) => _password = value,
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
                              borderRadius: BorderRadius.circular(6.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF2196F3),
                                    Color(0xFF21CBF3)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight),
                            ),
                            child: RaisedButton(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                                /*side: BorderSide(color: color)*/
                              ),
                              onPressed: validateAndSubmit,
                              child: (_loadingMessage
                                  ? Text("Please wait...")
                                  : Text("Login")),
                            )),
                        SizedBox(
                          height: 32,
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
                            "Register an Account",
                            style: TextStyle(
                              //fontSize: 16,
                              //color: Colors.white,
                              //fontWeight: FontWeight.bold,
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
      ),
    );
  }
}



