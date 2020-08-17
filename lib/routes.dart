import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/analysis.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/contact.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/history.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/home.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/notifications.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/portfolio.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/profile.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/login.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/public.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/settings.dart';

//import 'package:fluttertemplateapp/ui/screens/unauthenticated/register.dart';
//import 'package:fluttertemplateapp/ui/screens/unauthenticated/register_form.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/welcome.dart';
//import 'package:provider/provider.dart';

class RootRoute extends StatefulWidget {
  @override
  _RootRouteState createState() => _RootRouteState();
}

class _RootRouteState extends State<RootRoute> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PublicRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}

// Route parameters:
const String HomeViewRoute = '/';
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        /*appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(CupertinoIcons.settings),
            onPressed: () {},
          ),
        ),*/
/*        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: Text('Notifications'),
                onTap: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => NotificationsScreen()
                ));
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {Navigator.push(context, MaterialPageRoute(
                  builder: (context) => SettingsScreen()
                ));
                },
              ),
              ListTile(
                title: Text('Contact'),
                onTap: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ContactScreen()
                ));
                },
              ),
              ListTile(
                title: Text('Help'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(),
              ListTile(),
              ListTile(
                title: Text('Log out'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),*/
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
