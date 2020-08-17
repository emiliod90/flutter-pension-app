import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/gauge.dart';
import 'package:fluttertemplateapp/ui/charts/simple_chart.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';
import 'package:fluttertemplateapp/ui/charts/combo_chart.dart';
import 'package:fluttertemplateapp/ui/screens/onboarding/onboarding.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xff28465f),
        title: Text(
          "Nest",
          style: Theme
              .of(context)
              .textTheme
              .headline6,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Color(0xff28465f),
                    ),
                    Positioned(
                      top: 45,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0),
                                topRight: Radius.circular(45.0),
                              ),
                              color: Color(0xfff5f5f5)),
                          height: size.height * 0.4,
                          width: size.width),
                    ),
                    Positioned(
                      top: 5.0,
                      right: 20.0,
                      left: 20.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Hero(
                          tag: 'Pot',
                          child: Container(
                            height: size.width * 0.6,
                            width: size.width * 0.6,
                            decoration:
                            BoxDecoration(color: Colors.transparent),
                            child: Stack(
                              children: <Widget>[
                                GaugeChart.withSampleData(),
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "£18,420",
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                      Text(
                                        "My Nest Pot",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 16,
                      right: 16,
                      child: Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "+71%", style: TextStyle(fontSize: 18),),
                                    Text("target score")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "+8.1%", style: TextStyle(fontSize: 18),),
                                    Text("since '17")
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "-£545", style: TextStyle(fontSize: 18),),
                                    Text("Shortfall")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  //height: size.width,
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(12.0),
                        topRight: const Radius.circular(12.0),
                        bottomLeft: const Radius.circular(12.0),
                        bottomRight: const Radius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(""
                                "Nest Pension",
                              style: TextStyle(
                                fontSize: 17
                              ),),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£18,420",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.star)
                              ],
                            ),
                            onTap: () {},
                            dense: true,

                          ),
                          ListTile(
                            title: Text(""
                                "Vanguard SIPP",
                              style: TextStyle(
                                  fontSize: 17
                              ),),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£11,260",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                            dense: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditPension(),
                                    fullscreenDialog: true),
                              );
                            },

                          ),
                          ListTile(
                            title: Text(""
                                "Legal & General",
                              style: TextStyle(
                                  fontSize: 17
                              ),),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£2,940",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                            dense: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditPension(),
                                    fullscreenDialog: true),
                              );
                            },

                          ),
                          ListTile(
                            title: Text(""
                                "Aviva Pension",
                              style: TextStyle(
                                  fontSize: 17
                              ),),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£1,820",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows)
                              ],
                            ),
                            dense: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditPension(),
                                    fullscreenDialog: true),
                              );
                            },

                          ),
                          Divider(
                            height: 1,
                            indent: 16,
                            endIndent: 16,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text(""
                                "Add Pension",
                              style: TextStyle(
                                  fontSize: 17
                              ),),
                            leading: Icon(Icons.add),
                            dense: true,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddPension(),
                                    fullscreenDialog: true),
                              );
                            },

                          ),
                          Divider(
                            height: 1,
                            indent: 16,
                            endIndent: 16,
                            color: Colors.grey,
                          ),
                          ListTile(
                            title: Text(""
                                "Total",
                              style: TextStyle(
                                  fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                            subtitle: Text("My Total Pension Pot Value"),
                            trailing: Text(
                              "£34,440",
                              style: TextStyle(
                                  fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            dense: true,
                            //onTap: () {},
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: size.width * 0.5,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            //color: Color(0xff751248),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                          ),
                          child: Center(
                            child: OrdinalComboBarLineChart.withSampleData(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: size.width * 0.5,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            //color: Color(0xff4f2a5f),
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  topRight: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0))),
                          child: Center(
                            child: StackedFillColorBarChart.withSampleData(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.width,
                  padding: EdgeInsets.all(4),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/800x800"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class AddPension extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00515e),
        title: Text("Add Pension"),
        centerTitle: true,
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.business),
                    hintText: 'Enter the Pension Provider Name',
                    labelText: 'Provider Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.perm_identity),
                    hintText: 'Enter your Account or Policy No.',
                    labelText: 'Policy no.',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.money_off),
                    hintText: 'Enter most approx. value',
                    labelText: 'Approx. value',
                  ),
                ),
                SizedBox(
                  height: size.height * 0.035,
                ),
                MaterialButton(
                  minWidth: size.width * 0.75,
                  color: Color(0xff751248),
                  padding: EdgeInsets.all(16.0),
                  onPressed: () {Navigator.pop(context);},
                  child: Text(
                    "Add Pension",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                /*ListTile(
                  title: Text("Transfer Pension to Nest"),
                  //leading: Icon(Icons.arrow_forward),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OnboardingScreen();
                      },
                    ),
                  );},
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditPension extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00515e),
        title: Text("Transfer Pension"),
        centerTitle: true,
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.business),
                    hintText: 'Enter the Pension Provider Name',
                    labelText: 'Provider Name',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.perm_identity),
                    hintText: 'Enter your Account or Policy No.',
                    labelText: 'Policy no.',
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.money_off),
                    hintText: 'Enter most approx. value',
                    labelText: 'Approx. value',
                  ),
                ),
/*                SizedBox(
                  height: size.height * 0.035,
                ),
                MaterialButton(
                  minWidth: size.width * 0.75,
                  color: Color(0xff751248),
                  padding: EdgeInsets.all(16.0),
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OnboardingScreen();
                      },
                    ),
                  );},
                  child: Text(
                    "Update Details",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),*/
                SizedBox(
                  height: size.height * 0.035,
                ),
                MaterialButton(
                  minWidth: size.width * 0.75,
                  color: Color(0xff751248),
                  padding: EdgeInsets.all(16.0),
                  onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return OnboardingScreen();
                      },
                    ),
                  );},
                  child: Text(
                    "Transfer to Nest",
                    style: TextStyle(color: Colors.white, fontSize: 16),
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

