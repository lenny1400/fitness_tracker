import 'package:fitness_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SummaryCalories extends StatefulWidget {
  const SummaryCalories({Key? key}) : super(key: key);

  @override
  State<SummaryCalories> createState() => _SummaryCaloriesState();
}

class _SummaryCaloriesState extends State<SummaryCalories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "1130",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito-Bold"),
                  ),
                ),
                Text(
                  "eaten",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Nunito-Bold"),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: CircularPercentIndicator(
              radius: 45,
              lineWidth: 6,
              backgroundColor: Colors.white,
              startAngle: 270,
              percent: 0.34,
              center: const Text(
                "2000\nremaining",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Nunito-ExtraBold",
                    fontWeight: FontWeight.w500,
                    color: kTextColor),
              ),
              progressColor: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "130",
                    style: TextStyle(
                        color: kTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Nunito-Bold"),
                  ),
                ),
                Text(
                  "burned",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Nunito-Bold"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
