import 'package:flutter/material.dart';
import '../api/medweight.dart';

class TotalStock extends StatefulWidget {
  @override
  _TotalStockState createState() => _TotalStockState();
}

class _TotalStockState extends State {
  MedStock ms = MedStock();
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
      child: ListView(children: [
        SizedBox(
          height: 60,
          child: Row(
            children: [
              Text(
                "Medicine Stocks",
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
            future: ms.getMedStocks(),
            builder: (context, snapshot) {
              print(snapshot.data);
              if (snapshot.hasData) {
                return ListView.builder(
                    // scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i) {
                      return Visibility(
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        visible: viewVisible,
                        child: Card(
                          child: Ink(
                            color: Color.fromARGB(255, 4, 17, 38),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 6, 22, 85)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              title: Text(
                                snapshot.data![i]['medicine_name'].toString(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.blueAccent,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () {},
                              subtitle: Text(
                                "minimum stock: " +
                                    snapshot.data![i]['minimum_stock']
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.green,
                                  fontFamily: "poppins",
                                ),
                              ),
                              leading: CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 7, 42, 126),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "poppins",
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: Text('No Data Found'),
                );
              }
            },
          ),
        ),
      ]),
    );
  }
}
