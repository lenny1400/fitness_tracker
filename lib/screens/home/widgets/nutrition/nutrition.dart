import 'package:fitness_tracker/screens/home/widgets/nutrition/meals/breakfast.dart';
import 'package:fitness_tracker/screens/home/widgets/nutrition/meals/dinner.dart';
import 'package:fitness_tracker/screens/home/widgets/nutrition/meals/lunch.dart';
import 'package:fitness_tracker/screens/home/widgets/nutrition/meals/snackOne.dart';
import 'package:fitness_tracker/screens/home/widgets/nutrition/meals/snackTwo.dart';
import 'package:flutter/cupertino.dart';

import '../../../../constants.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({Key? key}) : super(key: key);

  @override
  NutritionState createState() => NutritionState();
}

class NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nutrition",
              style: TextStyle(
                  fontSize: 16,
                  color: kTextColor,
                  fontFamily: "Nunito-SemiBold",
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        SizedBox(height: 10,),
        NutritionBreakfast(),
        SizedBox(height: 10,),
        NutritionSnackOne(),
        SizedBox(height: 10,),
        NutritionLunch(),
        SizedBox(height: 10,),
        NutritionSnackTwo(),
        SizedBox(height: 10,),
        NutritionDinner(),
      ],
    );
  }
}

