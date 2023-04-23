import 'package:fitness_tracker/constants.dart';
import 'package:fitness_tracker/screens/home/widgets/summary/calories.dart';
import 'package:fitness_tracker/screens/home/widgets/summary/macros.dart';
import 'package:flutter/cupertino.dart';

class HomeSummary extends StatefulWidget {
  const HomeSummary({Key? key}) : super(key: key);

  @override
  State<HomeSummary> createState() => _HomeSummaryState();
}

class _HomeSummaryState extends State<HomeSummary> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final height = MediaQuery.of(context).size.height * 0.27;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Summary",
              style: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontFamily: "Nunito-SemiBold",
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kBoxColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    flex: 2,
                    child: SummaryCalories(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: SummaryMacros(),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
