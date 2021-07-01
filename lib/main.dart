import 'package:fitnessapp/bmi.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  dynamic bmi;
  void initState(){
    super.initState();
    // getBmi();
   }

  void getBmi() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bmi=prefs.getDouble('bmi');
    });
    

  }
  @override
  Widget build(BuildContext context) {
    getBmi();
    if (bmi!=null){

      return home();
    }
    else{
      return Demo();
    }
  }
}
