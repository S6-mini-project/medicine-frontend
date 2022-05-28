import 'package:flutter/material.dart';
import './widgets/orderWidget.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OrderWidget(),
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
                child: Center(
                  child: Text(
                    "Hii user",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
                Icons.home,
                size: 40,
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
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
                color: Colors.black,
              ),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ],
        )),
      ),
    );
  }
}
