import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Color(0xff28465f),
          title: Text(
            "History",
          ),
          centerTitle: true,
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.tune),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailSettings(),
                        fullscreenDialog: true),
                  );
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.history),
                text: "Summary",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Detail",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[SummaryHistory(), DetailHistory()],
        ),
      ),
    );
  }
}

class SummaryHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Summary",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Open Sans"),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "£5,070.87",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    onTap: () {},
                    leading: Icon(Icons.person_pin, color: Colors.blue,),
                    subtitle: Text("My Contributions", style: TextStyle(color: Colors.black54),),
                  ),
                  ListTile(
                    title: Text(
                      "£4,320.29",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    onTap: () {},
                    leading: Icon(Icons.work, color: Colors.red,),
                    subtitle: Text("Employer Contributions", style: TextStyle(color: Colors.black54)),
                  ),
                  ListTile(
                    title: Text(
                      "£1,245.45",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    onTap: () {},
                    leading: Icon(Icons.monetization_on, color: Colors.orange,),
                    subtitle: Text("Tax Relief", style: TextStyle(color: Colors.black54)),
                    enabled: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                    child: StackedFillColorBarChart.withSampleData(),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Employer History",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Open Sans"),
                    ),
                  ),
                  EmployerEntity(
                    indicatorColor: Colors.red,
                    indicatorFraction: 0.5,
                    title: "Nest Corp.",
                    subtitle: "01/08/20",
                    amount: "£2,280",
                    suffix: Icon(Icons.chevron_right),
                  ),
                  EmployerEntity(
                    indicatorColor: Colors.red,
                    indicatorFraction: 0.5,
                    title: "GSK",
                    subtitle: "01/03/19",
                    amount: "£2,040",
                    suffix: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailHistory extends StatefulWidget {
  @override
  _DetailHistoryState createState() => _DetailHistoryState();
}

class _DetailHistoryState extends State<DetailHistory> {
  bool _checkTax = true;
  bool _checkEmployer = true;

  DateTime _dateTime = DateTime.now();
  DateTime _startDate = DateTime.now().subtract(Duration(days: 365));

  void _setCheckTax(bool newValue) {
    setState(() {
      _checkTax = newValue;
    });
  }

  void _setCheckEmployer(bool newValue) {
    setState(() {
      _checkEmployer = newValue;
    });
  }

  _pickDate() async {
    showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime(DateTime.now().year - 80),
      lastDate: DateTime(DateTime.now().year),
    );
  }

  _pickEndDate() async {
    showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: _startDate,
      lastDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: Stack(
          children: <Widget>[
            Align(),
            Column(
              children: <Widget>[
                Container(
                  //height: 250,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Color(0xff00515e),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: <Widget>[
                      /*Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Contribution History",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Open Sans"),
                        ),
                      ),*/
                      Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              //color: Colors.cyan,
                              height: 30,
                              child: Center(
                                child: Text(
                                  "Start Date",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Open Sans"),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              //color: Colors.teal,
                              height: 30,
                              child: Center(
                                child: Text(
                                  "End Date",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: "Open Sans"),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              height: 40,
                              child: Center(
                                child: MaterialButton(
                                  onPressed: _pickDate,
                                  child: Text(
                                    "${_startDate.day}/${_startDate.month}/${_startDate.year}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "Open Sans"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              height: 40,
                              child: Center(
                                child: MaterialButton(
                                  onPressed: _pickEndDate,
                                  child: Text(
                                    "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "Open Sans"),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.red[200],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListTile(
                    title: Text(
                      "01/08/2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    subtitle: Text("Employer Contribution"),
                    //onTap: () {},
                    leading: Icon(Icons.work),
                    //subtitle: Text("12 Units"),
                    enabled: true,
                    trailing: Text(
                      "£320",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListTile(
                    title: Text(
                      "01/08/2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    subtitle: Text("My Contribution"),
                    //onTap: () {},
                    leading: Icon(Icons.person_pin),
                    //subtitle: Text("12 Units"),
                    enabled: true,
                    trailing: Text(
                      "£320",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListTile(
                    title: Text(
                      "15/07/2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    subtitle: Text("Tax Relief"),
                    //onTap: () {},
                    leading: Icon(Icons.attach_money),
                    //subtitle: Text("12 Units"),
                    enabled: true,
                    trailing: Text(
                      "£85",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListTile(
                    title: Text(
                      "01/07/2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    subtitle: Text("Employer Contribution"),
                    //onTap: () {},
                    leading: Icon(Icons.work),
                    //subtitle: Text("12 Units"),
                    enabled: true,
                    trailing: Text(
                      "£420",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: ListTile(
                    title: Text(
                      "01/07/2020",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                          fontFamily: "Open Sans"),
                    ),
                    subtitle: Text("My Contribution"),
                    //onTap: () {},
                    leading: Icon(Icons.person_pin),
                    //subtitle: Text("12 Units"),
                    enabled: true,
                    trailing: Text(
                      "£420",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                FloatingActionButton(
                  child: Icon(Icons.cloud_download),
                  onPressed: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => MyActionSheet());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DetailSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff00515e),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(
                "Start Date: ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontFamily: "Open Sans"),
              ),
              leading: Icon(
                Icons.date_range,
                color: Colors.black54,
              ),
              onTap: () {},
              trailing: Text(
                //"${_startDate.day}/${_startDate.month}/${_startDate.year}",
                "01/09/2017",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontFamily: "Open Sans"),
              ),
            ),
            ListTile(
              title: Text(
                "End Date: ",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontFamily: "Open Sans"),
              ),
              leading: Icon(
                Icons.date_range,
                color: Colors.black54,
              ),
              onTap: () {},
              trailing: Text(
                //"${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                "13/08/2020",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontFamily: "Open Sans"),
              ),
            ),
            Divider(
              height: 1,
              indent: 16,
              endIndent: 16,
              color: Colors.grey,
            ),
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black54),
              child: CheckboxListTile(
                title: Text(
                  "Incl. Employer Contributions?",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontFamily: "Open Sans"),
                ),
                checkColor: Colors.white,
                activeColor: Colors.green,
                //secondary: Icon(Icons.attach_money),
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: null,
              ),
            ),
            Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black54),
              child: CheckboxListTile(
                title: Text(
                  "Incl. Tax Relief?",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontFamily: "Open Sans"),
                ),
                checkColor: Colors.white,
                activeColor: Colors.green,
                //secondary: Icon(Icons.attach_money),
                controlAffinity: ListTileControlAffinity.leading,
                value: true,
                onChanged: null,
              ),
            ),
            Divider(
              height: 1,
              indent: 16,
              endIndent: 16,
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              onTap: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) => MyActionSheet());
              },
              title: Text(
                "Download selected",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontFamily: "Open Sans"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: Text("History Options"),
      actions: <Widget>[
        CupertinoActionSheetAction(
          child: Text("Download"),
          onPressed: () {},
          isDefaultAction: true,
        ),
        CupertinoActionSheetAction(
          child: Text("Share"),
          onPressed: () {},
        ),
      ],
      cancelButton: CupertinoActionSheetAction(
        child: Text('Cancel'),
        onPressed: () {},
      ),
    );
  }
}

class EmployerEntityView extends StatelessWidget {
  final Color indicatorColor;
  final double indicatorFraction;
  final String title;
  final String subtitle;
  final String semanticsLabel;
  final String amount;
  final Widget suffix;

  const EmployerEntityView(
      {Key key,
      this.indicatorColor,
      this.indicatorFraction,
      this.title,
      this.subtitle,
      this.semanticsLabel,
      this.amount,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  //height: ,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: VerticalFractionBar(
                    color: indicatorColor,
                    fraction: indicatorFraction,
                  ),
                ),
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title),
                          Text(
                            "Last Contribution: $subtitle",
                            style: TextStyle(
                              fontFamily: "Source Sans",
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ],
                      ),
                      Text(
                        amount,
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 32),
                  padding: EdgeInsetsDirectional.only(start: 12),
                  child: suffix,
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class EmployerEntity extends StatelessWidget {
  final Color indicatorColor;
  final double indicatorFraction;
  final String title;
  final String subtitle;
  final String semanticsLabel;
  final String amount;
  final Widget suffix;

  const EmployerEntity(
      {Key key,
      this.indicatorColor,
      this.indicatorFraction,
      this.title,
      this.subtitle,
      this.semanticsLabel,
      this.amount,
      this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 800),
      transitionType: ContainerTransitionType.fade,
      openBuilder: (context, openContainer) => EmployerEntityDetail(),
      //openColor: RallyColors.primaryBackground,
      closedColor: Colors.transparent,
      closedElevation: 0,
      closedBuilder: (context, openContainer) {
        return FlatButton(
          onPressed: openContainer,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      //height: ,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: VerticalFractionBar(
                        color: indicatorColor,
                        fraction: indicatorFraction,
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(title),
                              Text(
                                "Last Contribution: $subtitle",
                                style: TextStyle(
                                  fontFamily: "Source Sans",
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                          Text(
                            amount,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(minWidth: 32),
                      padding: EdgeInsetsDirectional.only(start: 12),
                      child: suffix,
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                indent: 16,
                endIndent: 16,
                color: Colors.grey,
              )
            ],
          ),
        );
      },
    );
  }
}

class EmployerEntityDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "GSK",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "01/08/2020",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontFamily: "Open Sans"),
                ),
                //onTap: () {},
                leading: Icon(Icons.work),
                enabled: true,
                trailing: Text(
                  "£420",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  "01/07/2020",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontFamily: "Open Sans"),
                ),
                //onTap: () {},
                leading: Icon(Icons.work),
                enabled: true,
                trailing: Text(
                  "£420",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  "01/06/2020",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontFamily: "Open Sans"),
                ),
                //onTap: () {},
                leading: Icon(Icons.work),
                enabled: true,
                trailing: Text(
                  "£420",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  "01/05/2020",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontFamily: "Open Sans"),
                ),
                //onTap: () {},
                leading: Icon(Icons.work),
                //subtitle: Text("12 Units"),
                enabled: true,
                trailing: Text(
                  "£420",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalFractionBar extends StatelessWidget {
  VerticalFractionBar({this.color, this.fraction});

  final Color color;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    // TODO: use paint?
    return SizedBox(
        height: 32.0,
        width: 4.0,
        child: Column(children: <Widget>[
          SizedBox(
            height: (1 - fraction) * 32.0,
            child: Container(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: fraction * 32.0,
            child: Container(color: color),
          ),
        ]));
  }
}
