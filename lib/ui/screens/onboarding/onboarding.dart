import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

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
    return Stack(
      children: <Widget>[
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            _currentPage = page;
            setState(() {});
          },
          children: <Widget>[SlideOne(), SlideTwo(), SlideThree()],
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
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[700],
        body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      padding:
                          const EdgeInsets.only(top: 15.0, bottom: 5.0),
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
                      padding:
                          const EdgeInsets.only(top: 5.0, bottom: 15.0),
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
                Container(
                  //height: size.height * 0.2,
                  width: size.width * 0.6,
                ),
              ],
            ),
          ),
        ));
  }
}

class SlideTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.deepPurple[700],
        backgroundColor: Colors.yellow[700],
        //backgroundColor: Colors.teal[400],
        //appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        //title: Text("Login"),
        //centerTitle: true,
        //),
        body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: size.height * 0.45,
                  margin: EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Container(
                    //height: size.height * 0.1,
                    width: size.width * 0.7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 5.0),
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
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5.0, bottom: 15.0),
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
                    )),
                Container(
                  //height: size.height * 0.2,
                  width: size.width * 0.7,
                ),
              ],
            ),
          ),
        ));
  }
}

class SlideThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        //backgroundColor: Colors.deepPurple[700],
        //backgroundColor: Colors.yellow[700],
        backgroundColor: Colors.teal[400],
        //appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        //title: Text("Login"),
        //centerTitle: true,
        //),
        body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      padding:
                          const EdgeInsets.only(top: 15.0, bottom: 5.0),
                      width: size.width * 0.7,
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
                      width: size.width * 0.7,
                      padding:
                          const EdgeInsets.only(top: 5.0, bottom: 15.0),
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
                SizedBox(
                  width: 40,
                  child: RaisedButton(
                    color: Colors.white,
                    textColor: Colors.black87,
                    onPressed: () {},
                    child: Text(
                      "Next",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
