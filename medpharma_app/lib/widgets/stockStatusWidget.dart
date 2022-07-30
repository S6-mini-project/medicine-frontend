import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:medpharma_app/api/medweight.dart';
import '../services/notification.dart';
import 'package:provider/provider.dart';

class StockStatusWidget extends StatefulWidget {
  StockStatusWidget({Key? key}) : super(key: key);

  @override
  _StockStatusWidgetState createState() => _StockStatusWidgetState();
}

class _StockStatusWidgetState extends State<StockStatusWidget> {
  Medweight weight = Medweight();
  double? wt;
  double? res;
  double? percent;
  double? mwt;
  double? per;
  double? rem;
  NotificationService notification = NotificationService();
  @override
  void initState() {
    Provider.of<NotificationService>(context, listen: false).initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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
                      String med_name =
                          snapshot.data![i]['medicine_name'].toString();
                      if (wt! <= mwt!) {
                        Provider.of<NotificationService>(context, listen: false)
                            .instantNofitication(med_name);
                      }
                      res = wt! / 1000;
                      res = num.parse(res!.toStringAsFixed(2)) as double?;
                      percent = (wt! / mwt!) * 100;
                      percent =
                          num.parse(percent!.toStringAsFixed(2)) as double?;
                      per = 1 -(percent! / 100);
                      rem = 100 - percent!;
                      return Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .18,
                          // width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: const LinearGradient(colors: [
                                // Color.fromARGB(255, 65, 156, 220),
                                Color.fromARGB(255, 12, 48, 82),
                                Color.fromARGB(255, 5, 19, 44),
                              ])),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      snapshot.data![i]['medicine_name']
                                          .toString(),
                                      style: TextStyle(
                                        fontFamily: "poppins",
                                        fontSize: 22,
                                        color: Colors.lightBlue,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                      child: new Text(
                                        "total remaining medicine:",
                                        style: new TextStyle(
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.0,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    new LinearPercentIndicator(
                                      width: MediaQuery.of(context).size.width *
                                          .5,
                                      animation: true,
                                      lineHeight: 20.0,
                                      animationDuration: 2500,
                                      percent: per!,
                                      center: Text(
                                        rem.toString() + "%",
                                        style: new TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      barRadius: const Radius.circular(16),
                                      progressColor:
                                          Color.fromARGB(255, 54, 207, 77),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: CircularPercentIndicator(
                                    animationDuration: 1500,
                                    progressColor:
                                        Color.fromARGB(255, 54, 207, 77),
                                    radius: 60.0,
                                    lineWidth: 13.0,
                                    animation: true,
                                    percent: per!,
                                    center: new Text(
                                      // "50.0%",
                                      res.toString() + " " + "g",
                                      style: new TextStyle(
                                        fontFamily: "poppins",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                // openWarningSnackBar(context, "Not connected to the internet");
                return const Center(
                  child: Text("No data available",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: "poppins",
                          fontSize: 15)),
                );
              }
            }),
      ),
    );
  }
}

openWarningSnackBar(context, String text) {
  // This should be called by an on pressed function
  // Example:
  // Button(
  //  onTap: (){
  //    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //   backgroundColor: Colors.blue,
  //   content: Text("Your Text"),
  //   duration: Duration(milliseconds: 1500),
  // ));
  // }
  //)
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: Colors.yellow,
    content: Row(
      children: [
        Icon(
          Icons.warning,
          color: Colors.black,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    ),
    duration: Duration(milliseconds: 12500),
  ));
}
