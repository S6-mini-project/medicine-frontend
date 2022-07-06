import 'package:flutter/material.dart';
import './orderCardWidget.dart';
import './notificationWidget.dart';
import 'package:medpharma_app/api/medweight.dart';

class OrderWidget extends StatefulWidget {
  @override
  OrderWidgetState createState() => OrderWidgetState();
}

class OrderWidgetState extends State {
  Medweight weight = Medweight();
  bool viewVisible = true;
  int? wt;
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
                    color: Colors.blueGrey,
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
          FutureBuilder<List>(
              future: weight.getMedWeight(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, i) {
                        wt = int.parse(snapshot.data![i]['medicine_weight']);
                        if (wt! <= 30) {
                          return SizedBox(
                            child: Visibility(
                              maintainSize: true,
                              maintainAnimation: true,
                              maintainState: true,
                              visible: viewVisible,
                              child: OrderCardWidget(),
                            ),
                          );
                        } else {
                          return Text(
                            "No Orders for now come back later",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: "poppins",
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                            ),
                          );
                        }
                      });
                } else {
                  return const Center(
                    child: Text("No data available"),
                  );
                }
              }),
        ],
      ),
    );
  }
}
