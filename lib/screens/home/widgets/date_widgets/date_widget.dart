import 'package:fitness_tracker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class HomeDate extends StatefulWidget {
  const HomeDate({Key? key}) : super(key: key);

  @override
  State<HomeDate> createState() => _HomeDateState();
}

class _HomeDateState extends State<HomeDate> {
  final weekDayXXX = [];
  final weekDayDate = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DateTime now = DateTime.now();
    // Today eg. SAT - 22.04
    String todayShort = DateFormat('E').format(now).toUpperCase();
    String todayDate = DateFormat('d').format(now).toUpperCase();
    // Yesterday
    String weekDay1X = DateFormat('E')
        .format(now.subtract(const Duration(days: 1)))
        .toUpperCase();
    String weekDayDate1X = DateFormat('d')
        .format(now.subtract(const Duration(days: 1)))
        .toUpperCase();
    // Day before Yesterday
    String weekDay2X = DateFormat('E')
        .format(now.subtract(const Duration(days: 2)))
        .toUpperCase();
    String weekDayDate2X = DateFormat('d')
        .format(now.subtract(const Duration(days: 2)))
        .toUpperCase();
    // Day before the day before yesterday
    String weekDay3X = DateFormat('E')
        .format(now.subtract(const Duration(days: 3)))
        .toUpperCase();
    String weekDayDate3X = DateFormat('d')
        .format(now.subtract(const Duration(days: 3)))
        .toUpperCase();
    // Tomorrow
    String weekDayX1 =
        DateFormat('E').format(now.add(const Duration(days: 1))).toUpperCase();
    String weekDayDateX1 =
        DateFormat('d').format(now.add(const Duration(days: 1))).toUpperCase();
    // Day after tomorrow
    String weekDayX2 =
        DateFormat('E').format(now.add(const Duration(days: 2))).toUpperCase();
    String weekDayDateX2 =
        DateFormat('d').format(now.add(const Duration(days: 2))).toUpperCase();
    // Day after the day after tomorrow
    String weekDayX3 =
        DateFormat('E').format(now.add(const Duration(days: 3))).toUpperCase();
    String weekDayDateX3 =
        DateFormat('d').format(now.add(const Duration(days: 3))).toUpperCase();

    // adding Strings to List
    weekDayXXX.add(weekDay3X);
    weekDayXXX.add(weekDay2X);
    weekDayXXX.add(weekDay1X);
    weekDayXXX.add(todayShort);
    weekDayXXX.add(weekDayX1);
    weekDayXXX.add(weekDayX2);
    weekDayXXX.add(weekDayX3);

    weekDayDate.add(weekDayDate3X);
    weekDayDate.add(weekDayDate2X);
    weekDayDate.add(weekDayDate1X);
    weekDayDate.add(todayDate);
    weekDayDate.add(weekDayDateX1);
    weekDayDate.add(weekDayDateX2);
    weekDayDate.add(weekDayDateX3);

    if (kDebugMode) {
      print(weekDayXXX);
      print(weekDayDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final height = MediaQuery.of(context).size.height * 0.05;
    final itemCounts = weekDayXXX.length;
    final boxWidth = (width / 9);
    final boxPadding = ((width / 9) * 2) / 6;
    // box = 41,4 | ovr = 289,8 | spacing left = 82,8

    return SizedBox(
      width: width,
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCounts,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(right: boxPadding),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kBoxColor,
                  ),
                  width: boxWidth,
                  height: height,
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            weekDayXXX[index],
                            style: const TextStyle(
                                color: kTextColor,
                                fontFamily: "Nunito-Regular",
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            weekDayDate[index],
                            style: const TextStyle(
                                color: kTextColor,
                                fontFamily: "Nunito-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
