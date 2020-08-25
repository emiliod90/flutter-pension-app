import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../routes.dart';
//import 'components/rounded_button.dart';

class AccountSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff3c3c3c),
        //appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        //title: Text("Login"),
        //centerTitle: true,
        //),
        body: SafeArea(
          left: false,
          right: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/rocket1.png'), height: size.width * 0.6,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Success",
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  width: size.width * 0.8,
                  child: Text(
                    "Your account has been activated!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 19,
                        ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: size.width - 64,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        gradient: LinearGradient(colors: [Color(0xFF2196F3), Color(0xFF21CBF3)])
                    ),
                    child: RaisedButton(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        /*side: BorderSide(color: color)*/),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );

                      },
                      child: Text("My Dashboard")
                          ,
                    )),
              ],
            ),
          ),
        )
    );
  }
}
