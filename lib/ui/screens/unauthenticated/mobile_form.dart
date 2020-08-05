import 'package:flutter/material.dart';
import 'components/rounded_button.dart';
import 'mobile_otp.dart';

class MobileFormScreen extends StatefulWidget {
  @override
  _MobileFormScreenState createState() => _MobileFormScreenState();
}

class _MobileFormScreenState extends State<MobileFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _mobile;

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
            return MobileOTPScreen();
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
                      height: size.width * 0.6,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        "Sync Device",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      width: size.width * 0.8,
                      height: 60.0,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(29.0)),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.8),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29.0),
                                bottomLeft: Radius.circular(29.0),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: size.width * 0.6,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Mobile Number",
                              ),
                              validator: (value) =>
                              value.isEmpty ? "Please provide Number" : null,
                              onSaved: (value) => _mobile = value,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RoundedButton(
                      text: "send",
                      textColor: Colors.white,
                      color: Colors.purple,
                      press: validateAndSubmit
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
