import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../constants.dart';

class HomeDate2 extends StatefulWidget {
  const HomeDate2({Key? key}) : super(key: key);

  @override
  State<HomeDate2> createState() => _HomeDate2State();
}

class _HomeDate2State extends State<HomeDate2> {
  final daysList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime now = DateTime.now();
    // Today eg. SAT - 22.04
    String todayShort = DateFormat('E').format(now).toUpperCase();
    String yesterdayShort = DateFormat('E')
        .format(now.subtract(const Duration(days: 1)))
        .toUpperCase();
    String tomorrowShort =
        DateFormat('E').format(now.add(const Duration(days: 1))).toUpperCase();
    // add to List
    daysList.add(yesterdayShort);
    daysList.add(todayShort);
    daysList.add(tomorrowShort);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final height = MediaQuery.of(context).size.height * 0.05;

    return SizedBox(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.fill,
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 80,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  daysList[0],
                  style: const TextStyle(
                      color: kTextColor,
                      fontFamily: "Nunito-Bold",
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  daysList[1],
                  style: const TextStyle(
                      color: kTextColor,
                      fontFamily: "Nunito-Bold",
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  daysList[2],
                  style: const TextStyle(
                      color: kTextColor,
                      fontFamily: "Nunito-Bold",
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.fill,
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 80,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
