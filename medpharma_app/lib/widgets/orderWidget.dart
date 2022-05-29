import 'package:flutter/material.dart';
import './orderCardWidget.dart';

class OrderWidget extends StatefulWidget {
  @override
  OrderWidgetState createState() => OrderWidgetState();
}

class OrderWidgetState extends State {
  bool viewVisible = true;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Text(
                  "All Orders",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "poppins",
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("icon button pressed");
                    showWidget();
                  },
                  splashRadius: 23,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 35,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 7, bottom: 15),
                ),
                IconButton(
                  onPressed: () {
                    print("icon button pressed");
                    hideWidget();
                  },
                  splashRadius: 23,
                  icon: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.black,
                    size: 35,
                  ),
                  padding:
                      EdgeInsets.only(top: 10, right: 10, left: 7, bottom: 15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: OrderCardWidget(),
          ),
        ],
      ),
    );
  }
}
