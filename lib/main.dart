import 'package:fitness_tracker/app.dart';
import 'package:fitness_tracker/constants.dart';
import 'package:fitness_tracker/screens/home/home.dart';
import 'package:fitness_tracker/startup.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  if (Platform.isAndroid) {
    // Android-specific code
    runApp(const MyApp());
    if (kDebugMode) {
      print("Platform: Android");
    }
  } else if (Platform.isIOS) {
    // iOS-specific code
    if (kDebugMode) {
      print("Platform: IOS");
    }
    runApp(const MyApp());
  } else if (Platform.isWindows){
    // Windows-specific code
    if (kDebugMode) {
      print("Platform: Windows");
    }
  } else if(kIsWeb){
    // Web-specific code
    if (kDebugMode) {
      print(kIsWeb);
    }
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  late bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadStartUp();
    if(kDebugMode){
      print(isLoaded);
    }
  }

  // Load the weight from storage
  void _loadStartUp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if(prefs.getBool('startUp') == null){
        // if startUp was ever done it sets 'isLoaded' to true
        if(prefs.getBool('startUp') == true){
          isLoaded = true;
        }else{
          isLoaded = false;
        }
      }else{
        isLoaded = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if(isLoaded){
      return const CupertinoApp(
        color: kBackground,
        debugShowCheckedModeBanner: false,
        home: App(),
      );
    }else{
      return const CupertinoApp(
        debugShowCheckedModeBanner: false,
        color: kBackground,
        home: StartUp(),
      );
    }
  }
}