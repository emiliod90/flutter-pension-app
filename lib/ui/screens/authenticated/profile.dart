import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/settings.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff28465f),
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
                                "ED",
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
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "Last active 01/08/2017",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
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
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0))),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Personal",
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
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0))),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Beneficiaries",
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
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.height * 0.25,
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0))),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Address &",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Contact",
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
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0))),
                          ),
                        ),
                      ),
                    ),
                  ],
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
