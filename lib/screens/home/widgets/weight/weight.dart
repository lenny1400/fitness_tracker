import 'package:flutter/cupertino.dart';

import '../../../../constants.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  WeightState createState() => WeightState();
}

class WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width*0.9;
    final height = MediaQuery.of(context).size.height*0.2;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Weight",
              style: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontFamily: "Nunito-SemiBold",
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kBoxColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        "75.6 kg",
                        style: TextStyle(
                          color: kTextColor,
                          fontFamily: "Nunito-Bold",
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, right: 70),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                          flex: 1,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: CupertinoButton(
                              onPressed: null,
                              child: Icon(
                                CupertinoIcons.minus_circle,
                                color: kTextColor,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: CupertinoButton(
                              onPressed: null,
                              child: Icon(
                                CupertinoIcons.plus_circle,
                                color: kTextColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
