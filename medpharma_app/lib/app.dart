import 'package:flutter/material.dart';
import './widgets/orderWidget.dart';
import './widgets/drawerCardWidget.dart';
import 'widgets/homeScreen.dart';
import 'widgets/orderScreen.dart';
import './widgets/profileScreen.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: MyNavigationBar(),
         initialRoute: '/',  
    // routes: {  
    //   // When navigating to the "/" route, build the FirstScreen widget.  
    //   '/': (context) => HomeScreen(),  //routes
    //   // When navigating to the "/second" route, build the SecondScreen widget.  
    //   '/orders': (context) => OrderScreen(),  //routes
    // },  
    );
  }
}



class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OrderScreen(),
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
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 35,
                ),
                padding: EdgeInsets.all(17),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
            backgroundColor: Color.fromARGB(255, 249, 249, 249),
            elevation: 0.1,
            actions: [
              IconButton(
                onPressed: () {
                  print("icon button pressed");
                },
                icon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
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
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
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
          child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: DrawerCardWidget(),
            ),
            decoration: BoxDecoration(color: Colors.white),
          ),
          ListTile(
            title: Text(
              "home",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            subtitle: Text(
              "go to home page",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            onTap: () {
              print("home pressed");
            },
            hoverColor: Colors.black38,
            leading: Icon(
              Icons.home_filled,
              size: 40,
              color: Colors.indigo,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          ),
          ListTile(
            title: Text(
              "User Details",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            subtitle: Text(
              "Display user details",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            onTap: () {
              print("User pressed");
            },
            hoverColor: Colors.black38,
            leading: Icon(
              Icons.person,
              size: 40,
              color: Colors.indigo,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          ),
          ListTile(
            title: Text(
              "stocks",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            subtitle: Text(
              "display medicine stocks",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            onTap: () {
              print("stocks pressed");
            },
            hoverColor: Colors.black38,
            leading: Icon(
              Icons.stacked_bar_chart,
              size: 40,
              color: Colors.indigo,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          ),
          ListTile(
            title: Text(
              "Logout",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            subtitle: Text(
              "Logout of the app",
              style: TextStyle(
                fontFamily: "poppins",
              ),
            ),
            onTap: () {
              print("Logout pressed");
            },
            hoverColor: Colors.black38,
            leading: Icon(
              Icons.logout,
              size: 40,
              color: Colors.indigo,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
          
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
            ),
            label: "Profile",
           
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black38,
        iconSize: 32,
        onTap: _onItemTapped,
        elevation: 1,
      ),
    );
  }
}
