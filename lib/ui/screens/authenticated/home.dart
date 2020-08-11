import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:charts_flutter/flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        left: false,
        right: false,
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
                          color: Colors.black45,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0))),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.height * 0.2,
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
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.height * 0.2,
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
                  height: size.width * 0.5,
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
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.width * 0.5,
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0))),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.width * 0.5,
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
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
                  height: size.width,
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
              ],
            ),
          ),
        ));
  }
}
