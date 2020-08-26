import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff00515e),
      appBar: AppBar(
        title: Text("Chat with us"),
        centerTitle: true,
        backgroundColor: Color(0xff00515e),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 75.0,
                        backgroundImage: AssetImage('assets/images/Emilio2020.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Emilio D'Souza",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "SUPPORT ENGINEER",
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 150,
                      child: Divider(
                        color: Colors.orangeAccent[700],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Online',
                          style: TextStyle(
                            fontFamily: 'Indie Flower',
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width - 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        gradient: LinearGradient(
                            colors: [Color(0xFFFE6B8B), Color(0xFFFF8E53)],
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
                        onPressed: () {},
                        child: Text(
                          "Send Message",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                            fontFamily: 'Source Sans Pro',
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

