import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _totalPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 1;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _totalPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: 24.0,
      decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff751248),
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: Stack(
          children: <Widget>[
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                _currentPage = page;
                setState(() {});
              },
              children: <Widget>[SlideOne(), SlideTwo()],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SlideOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
        color: Color(0xff751248),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * 0.45,
                margin: EdgeInsets.only(top: 30.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width * 0.6,
                    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                    child: Text(
                      "Lorem Ipsum".toUpperCase(),
                      style: TextStyle(
                        fontSize: 32,
                        letterSpacing: 1,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: size.width * 0.6,
                    padding: const EdgeInsets.only(top: 5.0, bottom: 15.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec erat nisl, consequat vel interdum eu.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class SlideTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xff751248),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                width: size.width * 0.7,
                child: Text(
                  "Review",
                  style: TextStyle(
                    fontSize: 22,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListTile(
                title: Text(
                  "Title",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
                subtitle: Text(
                  "Sir",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
              ),
              ListTile(
                title: Text(
                  "Name",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
                subtitle: Text(
                  "Bender Bending Rodríguez",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
              ),
              ListTile(
                title: Text(
                  "Address",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
                subtitle: Text(
                  "57th Street, Manhattan, NY",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
              ),
              ListTile(
                title: Text(
                  "Provider Name",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
                subtitle: Text(
                  "Vanguard",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
              ),
              ListTile(
                title: Text(
                  "Provider Client/Policy Number",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
                subtitle: Text(
                  "3822600",
                  style:
                      TextStyle(color: Colors.white, fontFamily: "Open Sans"),
                ),
              ),
              ListTile(
                title: Text("Approx value", style: TextStyle(color: Colors.white, fontFamily: "Open Sans"),),
                subtitle: Text("£11,000", style: TextStyle(color: Colors.white, fontFamily: "Open Sans"),),
              ),
              Container(
                width: size.width - 54.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  gradient: LinearGradient(
                      colors: [Color(0xFF2196F3), Color(0xFF21CBF3)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight),
                ),
                child: RaisedButton(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    /*side: BorderSide(color: color)*/
                  ),
                  onPressed: () {},
                  child: Text("Confirm"),
                ),
              ),
            ],
          ),
        ));
  }
}
