import 'package:flutter/material.dart';
import 'package:medpharma_app/widgets/notificationWidget.dart';
import './widgets/orderWidget.dart';
import './widgets/drawerCardWidget.dart';
import 'widgets/homeScreen.dart';
import 'widgets/orderScreen.dart';
import './widgets/profileScreen.dart';
import './widgets/loginWidget.dart';
import './widgets/notificationScreen.dart';
import 'package:provider/provider.dart';
import './services/notification.dart';
import './api/login.dart';
import './widgets/signupWidget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          home: MyNavigationBar(),
          initialRoute: '/login',
          routes: {
            //   // When navigating to the "/" route, build the FirstScreen widget.
            '/login': (context) => LoginWidget(),
            '/home': (context) => MyNavigationBar(),
            '/users': (context) => ProfileScreen(),
            '/notifications': (context) => NotificationScreen(),
            '/orders': (context) => OrderScreen(),
            '/signup':(context) => SignupWidget() //routes
            //   // When navigating to the "/second" route, build the SecondScreen widget.
            //   '/orders': (context) => OrderScreen(),  //routes
          },
        ),
        providers: [
          ChangeNotifierProvider(create: (_) => NotificationService())
        ]);
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OrderScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.blueGrey,
                  size: 35,
                ),
                padding: EdgeInsets.all(17),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            backgroundColor: Color.fromARGB(255, 0, 17, 45),
            elevation: 0.1,
            actions: [
              IconButton(
                onPressed: () {
                  print("icon button pressed");
                  Navigator.pushNamed(context, '/notifications');
                },
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blueGrey,
                  size: 35,
                ),
                padding: EdgeInsets.all(17),
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                onPressed: () {
                  print("icon button2 pressed");
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blueGrey,
                  size: 35,
                ),
                padding: EdgeInsets.all(17),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )),
      drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 6, 23, 52),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: DrawerCardWidget(),
                ),
                decoration: BoxDecoration(color: Color.fromARGB(255, 0, 17, 45),),
              ),
              ListTile(
                title: Text(
                  "home",
                  style: TextStyle(
                  color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                subtitle: Text(
                  "go to home page",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                onTap: () {
                  print("home pressed");
                  Navigator.pushNamed(context, '/home');
                },
                hoverColor: Colors.black38,
                leading: Icon(
                  Icons.home_filled,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
              ListTile(
                title: Text(
                  "User Details",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                subtitle: Text(
                  "Display user details",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                onTap: () {
                  print("User pressed");
                  Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                hoverColor: Colors.black38,
                leading: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
              ListTile(
                title: Text(
                  "Orders",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                subtitle: Text(
                  "display medicine orders",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                onTap: () {
                  print("stocks pressed");
                 Navigator.push(context,
              MaterialPageRoute(builder: (context) => OrderScreen()));
                },
                hoverColor: Colors.black38,
                leading: Icon(
                  Icons.shopify_sharp,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
              ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                subtitle: Text(
                  "Logout of the app",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontFamily: "poppins",
                  ),
                ),
                onTap: () {
                  logout().then((value) {
                    if (value) {
                      print('logout');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginWidget()));
                    }
                  });
                },
                hoverColor: Colors.black38,
                leading: Icon(
                  Icons.power_settings_new_rounded,
                  size: 40,
                  color: Colors.blueGrey,
                ),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: "Orders",
          ),
            BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_important,
            ),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
        // type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        backgroundColor: Color.fromARGB(255, 0, 17, 45),
        selectedItemColor: Colors.lime,
        unselectedItemColor: Colors.blueGrey,
        iconSize: 30,
        onTap: _onItemTapped,
        elevation: 1,
      ),
    );
  }
}

//  class App extends StatelessWidget{
//     @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        home:Scaffold(
//          body: LoginWidget(),
//          backgroundColor: Color.fromARGB(255, 228, 222, 222),
//        )
//      );
//    }
//  }
