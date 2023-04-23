import 'package:fitness_tracker/constants.dart';
import 'package:flutter/cupertino.dart';

class HomeWelcome extends StatefulWidget {
  const HomeWelcome({Key? key}) : super(key: key);

  @override
  State<HomeWelcome> createState() => _HomeWelcomeState();
}

class _HomeWelcomeState extends State<HomeWelcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Welcome back, Elias",
              style: TextStyle(
                fontFamily: 'Nunito-ExtraBoldItalic',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: kTextColor,
              )),
        ),
        SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Today",
              style: TextStyle(
                fontFamily: 'Nunito-ExtraBold',
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: kTextColor,
              )),
        ),
      ],
    );
  }
}
