import 'package:flutter/cupertino.dart';

import '../../../../../constants.dart';

class NutritionSnackOne extends StatefulWidget {
  const NutritionSnackOne({Key? key}) : super(key: key);

  @override
  NutritionSnackOneState createState() => NutritionSnackOneState();
}

class NutritionSnackOneState extends State<NutritionSnackOne> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width*0.9;
    final height = MediaQuery.of(context).size.height*0.08;

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kBoxColor,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                CupertinoIcons.light_max,
                color: kTextColor,
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                child: Column(
                  children: const [
                    Expanded(
                      flex: 5,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "Snack 1",
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Nunito-Bold"
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "400 / 450 kcals",
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Nunito-Bold"
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: CupertinoButton(
                  onPressed: null,
                  child: Icon(
                    CupertinoIcons.add_circled_solid,
                    color: kTextColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
