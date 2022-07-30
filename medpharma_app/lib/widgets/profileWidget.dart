import 'package:flutter/material.dart';
import 'package:medpharma_app/api/user.dart';
import 'package:pie_chart/pie_chart.dart';
import '../api/user_profile.dart';
import 'package:fl_chart/fl_chart.dart';


class ProfileWidget extends StatelessWidget {
  /// the base color of the images background and its concentric circles.
  final Color primaryColor;

  /// the profile image to be displayed.
  final ImageProvider image;

  ///the diameter of the entire widget, including the concentric circles.
  final double size;

  /// the width between the edges of each concentric circle.
  final double transitionBorderwidth;
  // Call when you want to show the date picker

  const ProfileWidget(
      {Key? key,
      required Color this.primaryColor,
      required ImageProvider this.image,
      this.size = 160.0,
      this.transitionBorderwidth = 20.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                    child: Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: primaryColor.withOpacity(0.05)),
                )),
                Container(
                  child: Container(
                      height: size - transitionBorderwidth,
                      width: size - transitionBorderwidth,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(stops: [
                          0.01,
                          0.5
                        ], colors: [
                          Colors.white,
                          primaryColor.withOpacity(0.1)
                        ]),
                      )),
                ),
                Container(
                  child: Container(
                      height: size - (transitionBorderwidth * 2),
                      width: size - (transitionBorderwidth * 2),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor.withOpacity(0.4))),
                ),
                Container(
                  child: Container(
                      height: size - (transitionBorderwidth * 3),
                      width: size - (transitionBorderwidth * 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor.withOpacity(0.5))),
                ),
                Container(
                    child: Container(
                        height: size - (transitionBorderwidth * 4),
                        width: size - (transitionBorderwidth * 4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover, image: image)))),
              ],
            ),
            // Text(
            //   "Amarjith Raj",
            //   style: TextStyle(
            //       fontFamily: "poppins",
            //       fontWeight: FontWeight.bold,
            //       fontSize: 30),
            // )
           
                UserName(),
           
            
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Headline(),
      ],
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Quick Services",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "poppins"),
                  ),
                ],
              ),
              const Text(
                "View More",
                style: TextStyle(
                    color: Color(0xff15BE77),
                    fontWeight: FontWeight.normal,
                    fontFamily: "poppins"),
              ),
            ],
          ),
    
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(5),
            child: Row(children: [
              Container(
                height: 150,
                width: 150,
                child: Column(
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Image.asset("assets/call-doctor.png", fit: BoxFit.contain),
                    Text(
                      "Consult doctor",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/call-vendor.png", fit: BoxFit.contain),
                    Text(
                      "Contact Vendor",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
              Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset("assets/hospital.png", fit: BoxFit.contain),
                    Text(
                      "Emergency Services",
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 220, 220),
                          fontWeight: FontWeight.bold,
                          fontFamily: "poppins"),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(colors: [
                      Color.fromARGB(255, 76, 104, 217),
                      Color.fromARGB(255, 159, 106, 185),
                    ])),
              ),
            ]),
          ),
          SizedBox(height: 5,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Monthly Sales",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: "poppins"),
                  ),
                ],
              ),
              const Text(
                "View More",
                style: TextStyle(
                    color: Color(0xff15BE77),
                    fontWeight: FontWeight.normal,
                    fontFamily: "poppins"),
              ),
            ],
          ),
          // Pie()
          SizedBox(
            height: 15,
          ),
          LineChartSample2()
        ],
      ),
    );
  }
}



// pie chart
// class Pie extends StatefulWidget {
//   const Pie({Key? key}) : super(key: key);

//   @override
//    PieState createState() =>  PieState();
// }

// class  PieState extends State<Pie> {
  
// Map<String, double> dataMap = {
//     "Paracetamol": 5,
//     "Citrusene": 3,
//     "Acethromycin": 2,
//     "Aspirine": 1,
//   };

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return PieChart(
//       dataMap: dataMap,
//       animationDuration: Duration(milliseconds: 800),
//       chartLegendSpacing: 32,
//       chartRadius: MediaQuery.of(context).size.width / 2.6,
//       // colorList: colorList,
//       initialAngleInDegree: 0,
//       chartType: ChartType.ring,
//       ringStrokeWidth: 32,
//       centerText: "Medicines",
//       centerTextStyle: TextStyle(
//         color: Colors.green
//       ),
//       legendOptions: LegendOptions(
//         showLegendsInRow: false,
//         legendPosition: LegendPosition.right,
//         showLegends: true,
//         legendShape: BoxShape.circle,
//         legendTextStyle: TextStyle(
//           color: Colors.blueAccent,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       chartValuesOptions: ChartValuesOptions(
//         chartValueBackgroundColor: Color.fromARGB(255, 26, 57, 111),
//         showChartValueBackground: true,
//         showChartValues: true,
//         chartValueStyle: TextStyle(color: Colors.green),
//         showChartValuesInPercentage: false,
//         showChartValuesOutside: false,
//         // decimalPlaces: 1,
//       ),
//       // gradientList: ---To add gradient colors---
//       // emptyColorGradient: ---Empty Color gradient---
//     );
//   }
// }

class UserName extends StatefulWidget {
  
  const UserName({Key? key}) : super(key: key);
  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
String Name=' ';

  void callInit() async {
    await getProfile();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // callInit();
  }
  @override
  Widget build(BuildContext context) {
          getProfile().then((value) {
        if (value) {
          print(user_name);
        }
      });
    
      return  Column(
        children: [
          Text(
                  user_name,
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                  Text(
                  email_id,
                  style: TextStyle(
                    color: Colors.blueAccent,
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
        ],
      );
  }
}





class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                // color: Color(0xff232d37)),
                color: Color.fromARGB(255, 5, 19, 44)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: TextButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                  fontSize: 12,
                  color:
                      showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff68737d),
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 2:
        text = const Text('MAR', style: style);
        break;
      case 5:
        text = const Text('JUN', style: style);
        break;
      case 8:
        text = const Text('SEP', style: style);
        break;
      default:
        text = const Text('', style: style);
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 8.0,
      child: text,
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff67727d),
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '10K';
        break;
      case 3:
        text = '30k';
        break;
      case 5:
        text = '50k';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.left);
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        horizontalInterval: 1,
        verticalInterval: 1,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
          ),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        verticalInterval: 1,
        horizontalInterval: 1,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0xff37434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: bottomTitleWidgets,
            interval: 1,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: leftTitleWidgets,
            reservedSize: 42,
            interval: 1,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0xff37434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: [
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
              ColorTween(begin: gradientColors[0], end: gradientColors[1])
                  .lerp(0.2)!,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
                ColorTween(begin: gradientColors[0], end: gradientColors[1])
                    .lerp(0.2)!
                    .withOpacity(0.1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
