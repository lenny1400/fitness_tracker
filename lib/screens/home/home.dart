import 'package:fitness_tracker/screens/home/widgets/date_widgets/date_widget2.dart';
import 'package:fitness_tracker/screens/home/widgets/header_widget/welcome.dart';
import 'package:fitness_tracker/screens/home/widgets/summary/summary.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: const [
              HomeWelcome(),
              SizedBox(
                height: 15,
              ),
              HomeDate2(),
              SizedBox(
                height: 15,
              ),
              HomeSummary(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
