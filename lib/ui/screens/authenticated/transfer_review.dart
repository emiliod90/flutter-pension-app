import 'package:flutter/material.dart';

class TransferReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00515e),
        title: Text("Transfer Review"),
        centerTitle: true,
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.2,
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
                    child: Container(
                      padding: EdgeInsets.all(size.width * 0.05),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff751248)),
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.05),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}