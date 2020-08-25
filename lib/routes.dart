import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/analysis.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/history.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/home.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/portfolio.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/profile.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/login.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/public.dart';

// Route parameters:
const String HomeViewRoute = '/home';
const String LoginViewRoute = 'login';
const String PortfolioViewRoute = 'portfolio';
const String AnalysisViewRoute = 'analysis';
const String AccountViewRoute = 'account';
const String HistoryViewRoute = 'history';
const String PublicViewRoute = 'public';

Route<dynamic> generateRoute(RouteSettings settings) {
  // The RouteSettings parameter contains the name requested route.
  // Here we'll handle all the routing using a switch statement.
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case HistoryViewRoute:
      return MaterialPageRoute(builder: (context) => HistoryScreen());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case PortfolioViewRoute:
      return MaterialPageRoute(builder: (context) => PortfolioScreen());
    case AnalysisViewRoute:
      return MaterialPageRoute(builder: (context) => AnalysisScreen());
    case AccountViewRoute:
      return MaterialPageRoute(builder: (context) => ProfileScreen());
    case PublicViewRoute:
      return MaterialPageRoute(builder: (context) => PublicScreen());
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}

class Destination {
  const Destination(this.title, this.icon, this.color);

  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Home', Icons.home, Colors.blueGrey),
  Destination('Portfolio', Icons.pie_chart, Colors.blueGrey),
  Destination('Forecast', Icons.trending_up, Colors.blueGrey),
  Destination('History', Icons.table_chart, Colors.blueGrey),
  Destination('Account', Icons.account_box, Colors.blueGrey)
];

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  String _title;


  @override
  initState(){
    _title = allDestinations[_currentIndex].title;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            HomeScreen(),
            PortfolioScreen(),
            AnalysisScreen(),
            HistoryScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff751248),
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: allDestinations.map((Destination destination) {
            return BottomNavigationBarItem(
              icon: Icon(
                destination.icon,
                //color: destination.color,
              ),
              //backgroundColor: destination.color,
              title: Text(destination.title),
            );
          }).toList(),
          //selectedItemColor: Theme.of(context).,
        ),
      ),
    );
  }
}
