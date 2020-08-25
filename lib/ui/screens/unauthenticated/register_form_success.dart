import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/create_account.dart';

//import 'components/rounded_button.dart';

class RegisterFormSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff3c3c3c),
        body: SafeArea(
          left: false,
          right: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/balloon.png'),
                  height: size.width * 0.6,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Success!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.only(top: 5),
                  child: RichText(
                    textAlign:TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 19, height: 1.5, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text:
                                "We found your details! Now we can activate your account!")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: size.width - 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    gradient: LinearGradient(
                        colors: [Color(0xFF2196F3), Color(0xFF21CBF3)],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                  ),
                  child: RaisedButton(
                    color: Colors.transparent,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      /*side: BorderSide(color: color)*/
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CreateAccountScreen();
                          },
                        ),
                      );
                    },
                    child: Text("continue"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
