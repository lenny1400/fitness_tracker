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
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        "Carbs",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 4),
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
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "60/180g",
                          style: TextStyle(color: kTextColor),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        "Protein",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 4),
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
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "60/180g",
                          style: TextStyle(color: kTextColor),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    flex: 3,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Text(
                        "Fats",
                        style: TextStyle(color: kTextColor),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4,bottom: 4),
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
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "60/180g",
                          style: TextStyle(color: kTextColor),
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
