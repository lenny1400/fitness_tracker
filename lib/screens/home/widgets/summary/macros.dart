import 'package:fitness_tracker/constants.dart';
import 'package:flutter/material.dart';

class SummaryMacros extends StatefulWidget {
  const SummaryMacros({Key? key}) : super(key: key);

  @override
  State<SummaryMacros> createState() => _SummaryMacrosState();
}

class _SummaryMacrosState extends State<SummaryMacros> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Carbs",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        // Set the border radius here
                        child: LinearProgressIndicator(
                          value: 0.33,
                          // Replace with your loading progress value
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "60/180g",
                          style: TextStyle(fontSize: 12, color: kTextColor),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Protein",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        // Set the border radius here
                        child: LinearProgressIndicator(
                          value: 0.5,
                          // Replace with your loading progress value
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "100/200g",
                          style: TextStyle(fontSize: 12, color: kTextColor),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Fats",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        // Set the border radius here
                        child: LinearProgressIndicator(
                          value: 0.25,
                          // Replace with your loading progress value
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              const AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "20/80g",
                          style: TextStyle(fontSize: 12, color: kTextColor),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
