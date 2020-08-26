import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/notifications.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/settings.dart';
import 'package:fluttertemplateapp/ui/screens/onboarding/onboarding.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Color(0xff28465f),
      appBar: AppBar(
        backgroundColor: Color(0xff28465f),
        title: Text("Account"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: size.height * 0.4,
                  width: size.width,
                  padding: EdgeInsets.all(4),
                  child: Center(
                    child: Container(
                      //color: Colors.black12,
                      decoration: BoxDecoration(
                          //color: Colors.black45,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0))),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(size.width * 0.1),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff751248)),
                              child: Text(
                                "BR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: size.width * 0.1),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                "Joined 01/08/2017",
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "Open Sans"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "Last active 01/08/2017",
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 16,
                                fontFamily: "Open Sans"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
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
                            onPressed: () {},
                            splashColor: Color(0xff751248),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Information",
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
                              color: Color(0xff28465f),
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  topRight: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0))),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationsScreen(),
                                ),
                              );
                            },
                            splashColor: Color(0xff751248),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Secure Mail",
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
                          color: Color(0xff4f2a5f),
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0))),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(
                              Icons.people,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Manage Beneficiaries",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Open Sans",
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.person_add,
                              color: Colors.white,
                            ),
                            title: Text(
                              "Manage additional users",
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
                        color: Color(0xff751248),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0))),
                    child: ListTile(
                      leading: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Transfer a Pension",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Open Sans",
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return OnboardingScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff00515e),
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
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0))),
                    child: ListTile(
                      leading: Icon(
                        Icons.format_list_bulleted,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Policies",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Open Sans",
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0))),
                    child: ListTile(
                      leading: Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Log Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Open Sans",
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "/");
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
