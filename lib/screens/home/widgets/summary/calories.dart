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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        final availableHeight = constraints.maxHeight;
        return Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(
                            "1130",
                            style: TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Nunito-Bold"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "eaten",
                              style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Nunito-Bold"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: CircularPercentIndicator(
                  radius: availableHeight/2.5,
                  lineWidth: 5,
                  backgroundColor: Colors.white,
                  startAngle: 270,
                  percent: 0.5,
                  center: const FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      "2000\nremaining",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Nunito-ExtraBold",
                          fontWeight: FontWeight.w500,
                          color: kTextColor),
                    ),
                  ),
                  progressColor: Colors.blue,
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(
                            "130",
                            style: TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Nunito-Bold"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "burned",
                              style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Nunito-Bold"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
