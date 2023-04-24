import 'package:fitness_tracker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeWelcome extends StatefulWidget {
  const HomeWelcome({Key? key}) : super(key: key);

  @override
  State<HomeWelcome> createState() => _HomeWelcomeState();
}

class _HomeWelcomeState extends State<HomeWelcome> {

  final daysList = [];
  late DateTime dateToday;
  String dayString = "Today";

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateToday = DateTime.now();
    // Today eg. SAT - 22.04
    String todayShort = DateFormat('E').format(dateToday).toUpperCase();
    String yesterdayShort = DateFormat('E').format(dateToday.subtract(const Duration(days: 1))).toUpperCase();
    String tomorrowShort = DateFormat('E').format(dateToday.add(const Duration(days: 1))).toUpperCase();
    // add to List
    daysList.add(yesterdayShort);
    daysList.add(todayShort);
    daysList.add(tomorrowShort);
  }

  void fdayBefore(){
    setState(() {
      // clear List
      daysList.clear();
      dateToday = dateToday.subtract(const Duration(days: 1));
      // Today eg. SAT - 22.04
      String Xday = DateFormat('E').format(dateToday.subtract(const Duration(days: 1))).toUpperCase();
      String day = DateFormat('E').format(dateToday.subtract(const Duration(days: 0))).toUpperCase();
      String dayX = DateFormat('E').format(dateToday.add(const Duration(days: 1))).toUpperCase();
      // add to List
      daysList.add(Xday);
      daysList.add(day);
      daysList.add(dayX);
      if(dateToday.day == DateTime.now().day){
        dayString = "Today";
      } else if(dateToday.day == DateTime.now().subtract(const Duration(days: 1)).day){
        dayString = "Yesterday";
      } else{
        final dayNumber = DateFormat('d').format(dateToday).toString();
        final monthNumber = DateFormat('M').format(dateToday).toString();
        final dayName = DateFormat('E').format(dateToday).toString();
        dayString = "$dayName $dayNumber.$monthNumber";      }
    });
  }

  void fdayAfter(){
    setState(() {
      daysList.clear();
      dateToday = dateToday.add(const Duration(days: 1));
      // Today eg. SAT - 22.04
      String Xday = DateFormat('E').format(dateToday.subtract(const Duration(days: 1))).toUpperCase();
      String day = DateFormat('E').format(dateToday.subtract(const Duration(days: 0))).toUpperCase();
      String dayX = DateFormat('E').format(dateToday.add(const Duration(days: 1))).toUpperCase();
      // add to List
      daysList.add(Xday);
      daysList.add(day);
      daysList.add(dayX);
      if(dateToday.day == DateTime.now().day){
        dayString = "Today";
      } else if(dateToday.day == DateTime.now().add(const Duration(days: 1)).day){
        dayString = "Tomorrow";
      } else{
        final dayNumber = DateFormat('d').format(dateToday).toString();
        final monthNumber = DateFormat('M').format(dateToday).toString();
        final dayName = DateFormat('E').format(dateToday).toString();
        dayString = "$dayName $dayNumber.$monthNumber";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.9;
    final height = MediaQuery.of(context).size.height * 0.05;
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text("Welcome back, Elias",
              style: TextStyle(
                fontFamily: 'Nunito-ExtraBoldItalic',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: kTextColor,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
              dayString,
              style: const TextStyle(
                fontFamily: 'Nunito-ExtraBold',
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: kTextColor,
              )
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
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
                      onPressed: () {
                        fdayBefore();
                      },
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
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        daysList[0],
                        style: const TextStyle(
                            color: kTextColor,
                            fontFamily: "Nunito-Bold",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        daysList[1],
                        style: const TextStyle(
                            color: kTextColor,
                            fontFamily: "Nunito-Bold",
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        daysList[2],
                        style: const TextStyle(
                            color: kTextColor,
                            fontFamily: "Nunito-Bold",
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: CupertinoButton(
                      onPressed: () {
                        fdayAfter();
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 80,
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ],
    );
  }
}
