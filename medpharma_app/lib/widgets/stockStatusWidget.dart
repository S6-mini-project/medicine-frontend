import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StockStatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .18,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        // color: Color.fromARGB(255, 224, 248, 246),
        color: Colors.indigo,
        elevation: 1,
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
              CircularPercentIndicator(
                progressColor: Colors.lightGreenAccent,
                radius: 60.0,
                lineWidth: 13.0,
                animation: true,
                percent: 0.5,
                center: new Text(
                  "50.0%",
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
