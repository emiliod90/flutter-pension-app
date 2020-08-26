import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff28465f),
          title: Text(
            "Secure Mail",
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.inbox),
                text: "Inbox",
              ),
              Tab(
                icon: Icon(Icons.mail_outline),
                text: "Sent",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Inbox(), Sent()],
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

class Sent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

    );
  }
}
