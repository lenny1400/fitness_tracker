import 'package:fitness_tracker/constants.dart';
import 'package:flutter/cupertino.dart';

class TDEEForm extends StatefulWidget {
  const TDEEForm({Key? key}) : super(key: key);

  @override
  State<TDEEForm> createState() => _TDEEFormState();
}

class _TDEEFormState extends State<TDEEForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter your weight",
              style: TextStyle(
                  color: kTextColor,
                  fontFamily: "Nunito-ExtraBold",
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: const CupertinoTextField(
                  style: TextStyle(
                    fontFamily: "Nunito-Regular",
                    fontSize: 18,
                    color: kTextColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
