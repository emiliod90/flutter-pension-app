import 'package:flutter/material.dart';
import 'account_success.dart';
import 'components/rounded_button.dart';

class MobileOTPScreen extends StatefulWidget {
  @override
  _MobileOTPScreenState createState() => _MobileOTPScreenState();
}

class _MobileOTPScreenState extends State<MobileOTPScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _mobileOTP;
  String _one;
  String _two;
  String _three;
  String _four;
  String _five;

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
            return AccountSuccessScreen();
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
        resizeToAvoidBottomInset: false,
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
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        "Enter OTP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 35.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onSaved: (value) => _one = value,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onSaved: (value) => _two = value,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onSaved: (value) => _three = value,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onSaved: (value) => _four = value,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12.0)),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              onSaved: (value) => _five = value,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width * 0.7,
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Resend OTP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.2),
                    RoundedButton(
                        text: "verify",
                        textColor: Colors.white,
                        color: Colors.purple,
                        press: validateAndSubmit),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
