import 'package:flutter/material.dart';
import 'package:medpharma_app/api/medweight.dart';

class NotificationWidget extends StatefulWidget {
  @override
  NotificationWidgetState createState() => NotificationWidgetState();
}

class NotificationWidgetState extends State {
  Medweight weight = Medweight();
  bool viewVisible = true;
  double? wt;
  double? mwt;
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
                  "All Notifications",
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
          SingleChildScrollView(
            child: FutureBuilder<List>(
                future: weight.getMedWeight(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        // scrollDirection: Axis.vertical,
                           physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          wt = double.parse(snapshot.data![i]['medicine_weight']);
                          mwt = double.parse(snapshot.data![i]['minimum_stock']);
                          if (wt! <= mwt!) {
                            return SizedBox(
                              child: Visibility(
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                visible: viewVisible,
                                child: Flexible(
                                  flex:1,
                                  fit: FlexFit.tight,
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Color.fromARGB(255, 17, 16, 20),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    tileColor: Color.fromARGB(255, 4, 17, 38),
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      child: Icon(
                                        Icons.error,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    title: Text(
                                      snapshot.data![i]['medicine_name'].toString()+" Quantity has reached minimum stock!",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontFamily: "poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    subtitle: Text(
                                      "Order Now",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "poppins",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: Icon(Icons.delete,
                                          color: Colors.redAccent),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Text(
                              "No Notifications for now come back later",
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontFamily: "poppins",
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          }
                        });
                  } else {
                    return const Center(
                      child: Text(
                        "No data available",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "poppins",
                            fontSize: 15),
                      ),
                    );
                  }
                }),
          ),
        ],
      ),
    );
  }
}
