import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/gauge.dart';

//import 'package:fluttertemplateapp/ui/charts/simple_chart.dart';
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff28465f),
        title: Text(
          "Nest",

         // style: Theme.of(context).textTheme.headline6,
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: SafeArea(
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Hero(
                  tag: 'Pot',
                  child: Container(
                    margin: EdgeInsets.only(top: 16),
                    height: size.width * 0.6,
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
                                    fontSize: 21,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.all(4.0),
                      height: 90,
                      width: (size.width * 0.3) - 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                          //border: Border.all(color: Color(0xff28465f), width: 2),
                          color:  Colors.blueAccent),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "+71%",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                            Text("target score",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.all(4.0),
                      height: 90,
                      width: (size.width * 0.3) - 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                          //border: Border.all(color: Color(0xff28465f), width: 2),
                          color: Colors.indigoAccent),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "+8.1%",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                            Text(
                              "since '17",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      padding: EdgeInsets.all(4.0),
                      height: 90,
                      width: (size.width * 0.3) - 8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                          //border: Border.all(color: Color(0xff28465f), width: 2),
                          color: Colors.deepPurpleAccent),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "-£545",
                              style: TextStyle(
                                  fontSize: 17, color: Colors.white),
                            ),
                            Text("Shortfall",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  //height: size.width,
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
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
                            title: Text(
                              ""
                              "Nest Pension",
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.blue),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£18,420",
                                  style: TextStyle(fontSize: 18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.star, color: Colors.deepOrange)
                              ],
                            ),
                            onTap: () {},
                            dense: true,
                          ),
                          ListTile(
                            title: Text(
                              ""
                              "Vanguard SIPP",
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.indigo),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£11,260",
                                  style: TextStyle(fontSize: 18, ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows, color: Colors.lightBlue)
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
                            title: Text(
                              ""
                              "Legal & General",
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.deepPurple),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£2,940",
                                  style: TextStyle(fontSize: 18, ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows, color: Colors.lightBlue)
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
                            title: Text(
                              ""
                              "Aviva Pension",
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: Colors.purple),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  "£1,820",
                                  style: TextStyle(fontSize: 18, ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.compare_arrows, color: Colors.lightBlue)
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
                            title: Text(
                              ""
                              "Add Pension",
                              style: TextStyle(fontSize: 17,),
                            ),
                            leading: Icon(Icons.add,),
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
                            title: Text(
                              ""
                              "Total",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold,),
                            ),
                            subtitle: Text("My Total Pension Pot Value", style: TextStyle(fontSize: 15),),
                            trailing: Text(
                              "£34,440",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold, ),
                            ),
                            dense: true,
                            //onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Container(
                    height: size.height * 0.4,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Card(
                    color: Color(0xff00515e),
                    elevation: 1.0,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width*0.3,
                          height: size.width*0.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                /*topLeft: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),*/
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/400x400/?happy"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          //width: 440,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Latest Articles", style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Open Sans"),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Card(
                    color: Color(0xff751248),
                    elevation: 1.0,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width*0.3,
                          height: size.width*0.3,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                /*topLeft: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),*/
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/400x400/?city"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          //width: 440,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Market News", style: TextStyle(color: Colors.white,fontSize: 20, fontFamily: "Open Sans"),),
                          ),
                        ),
                      ],
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
    Size size = MediaQuery.of(context).size;
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
    Size size = MediaQuery.of(context).size;
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return OnboardingScreen();
                        },
                      ),
                    );
                  },
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
