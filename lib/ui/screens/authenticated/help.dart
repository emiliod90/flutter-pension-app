import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/settings.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff00515e),
      appBar: AppBar(
        title: Text("Help"),
        centerTitle: true,
        backgroundColor: Color(0xff00515e),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.25,
                      padding: EdgeInsets.all(4),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff751248),
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(12.0),
                                topRight: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),
                                bottomRight: const Radius.circular(12.0))),
                        child: FlatButton(
                          splashColor: Colors.white,
                          onPressed: () {},
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Pension &",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Investing Guide",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.25,
                      padding: EdgeInsets.all(4),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff4f2a5f),
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(12.0),
                                topRight: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),
                                bottomRight: const Radius.circular(12.0))),
                        child: FlatButton(
                          onPressed: () {},
                          splashColor: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Nest App",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "Demo Tour",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                //height: size.width * 0.5,
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0))),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.help_outline,
                            color: Colors.white,
                          ),
                          title: Text(
                            "FAQs",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open Sans",
                            ),
                          ),
                          onTap: () => launch(
                              'https://www.nestpensions.org.uk/schemeweb/memberhelpcentre/frequently-asked-questions.html'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Chat with us",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open Sans",
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactScreen(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          title: Text(
                            "Phone us",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Open Sans",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff3c3c3c),
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(12.0),
                          topRight: const Radius.circular(12.0),
                          bottomLeft: const Radius.circular(12.0),
                          bottomRight: const Radius.circular(12.0))),
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Open Sans",
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsScreen(),
                            fullscreenDialog: true),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
