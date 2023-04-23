import 'package:fitness_tracker/constants.dart';
import 'package:fitness_tracker/screens/tdee_calculator/widgets/tdeeForm.dart';
import 'package:flutter/cupertino.dart';

class TDEECalculator extends StatefulWidget {
  const TDEECalculator({Key? key}) : super(key: key);

  @override
  State<TDEECalculator> createState() => _TDEECalculatorState();
}

class _TDEECalculatorState extends State<TDEECalculator> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: kBackground,
        child: TDEEForm(),
      ),
    );
  }
}
