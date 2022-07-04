import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:medpharma_app/api/medweight.dart';

class StockStatusWidget extends StatefulWidget {
  StockStatusWidget({Key? key}) : super(key: key);

  @override
  _StockStatusWidgetState createState() => _StockStatusWidgetState();
}

class _StockStatusWidgetState extends State<StockStatusWidget> {
  Medweight weight = Medweight();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List>(
          future: weight.getMedWeight(),
          builder: (context, snapshot) {
            print(snapshot.data![0]['medicine_weight']);
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, i) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .18,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 65, 156, 220),
                            Color.fromARGB(255, 18, 42, 65),
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
                                  "Paracetamol",
                                  style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: CircularPercentIndicator(
                                progressColor: Color.fromARGB(255, 54, 207, 77),
                                radius: 60.0,
                                lineWidth: 13.0,
                                animation: true,
                                percent: 0.5,
                                center: new Text(
                                  // "50.0%",
                                  snapshot.data![i]['medicine_weight']+" "+"mg",
                                  style: new TextStyle(
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
                    );
                  });
            } else {
              return const Center(
                child: Text("No data available"),
              );
            }
          }),
    );
  }
}
// class StockStatusWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * .18,
//       width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.all(7),
//          decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             gradient: const LinearGradient(colors: [
//               Color.fromARGB(255,175, 182, 187),
//               Color.fromARGB(255,91, 105, 119),
//             ])),
//         child: Padding(
//           padding: const EdgeInsets.all(13.0),
//           child: Row(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Paracetamol",
//                     style: TextStyle(
//                       fontFamily: "poppins",
//                       fontSize: 22,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 90,
//               ),
             
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: CircularPercentIndicator(
//                     progressColor: Colors.orangeAccent,
//                     radius: 60.0,
//                     lineWidth: 13.0,
//                     animation: true,
//                     percent: 0.5,
//                     center: new Text(
//                       "50.0%",
//                       style: new TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//               ),
//           ),
      
//       );
//   }
// }
