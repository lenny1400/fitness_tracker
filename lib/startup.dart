import 'package:fitness_tracker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartUp extends StatefulWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  StartUpState createState() => StartUpState();
}

class StartUpState extends State<StartUp> {

  final Color activeButton = kBoxColor;
  final Color inactiveButton = kBackground;
  Color btnImperial = kBackground;
  Color btnMetric = kBackground;
  late String activeUnit;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    btnImperial = activeButton;
  }

  void switchButtons(){
    setState(() {
      if(btnImperial == activeButton){
        btnImperial = inactiveButton;
        btnMetric = activeButton;
        activeUnit = "Metric";
      } else if(btnMetric == activeButton){
        btnMetric = inactiveButton;
        btnImperial = activeButton;
        activeUnit = "Imperial";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackground,
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20, top: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Personal Information",
                    style: TextStyle(
                      color: kTextColor,
                      fontFamily: "Nunito-ExtraBold",
                      fontWeight: FontWeight.w700,
                      fontSize: height/35,
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const CupertinoTextField(
                  placeholder: "Enter firstname",
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 5,
                        child: CupertinoTextField(
                          placeholder: "Enter age",
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(

                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: CupertinoTextField(
                          placeholder: "Enter sex",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 5,
                        child: CupertinoTextField(
                          placeholder: "Enter weight",
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(

                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: CupertinoTextField(
                          placeholder: "Enter height",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                SizedBox(
                  height: height*0.05,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: btnImperial,
                                ),
                                onPressed: switchButtons,
                                child: const Text(
                                  "Imperial",
                                  style: TextStyle(
                                    color: kTextColor
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: btnMetric,
                                ),
                                onPressed: switchButtons,
                                child: const Text(
                                    "Metric",
                                  style: TextStyle(
                                    color: kTextColor
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 6,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const CupertinoButton(
          color: kBoxColor,
          onPressed: null,
          child: Text(
            "Next",
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.w700,
              fontFamily: "Nunito-ExtraBold"
            ),
          ),
        ),
      ),
    );
  }
}