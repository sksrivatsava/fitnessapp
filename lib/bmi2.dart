import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Demo1 extends StatefulWidget {
  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
        // backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in cm eg: 180',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg eg: 70',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            RaisedButton(
               color: Colors.blue,
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),

          ],
        ),
      ),
    );
  }

  void calculateBMI() async{
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {

    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setDouble('bmi', _result);
    prefs.setInt('i',0);
    prefs.setInt('j',0);
    if(_result>18.5 && _result<=24.9){
      prefs.setInt('n',7);
    }
    else{
      prefs.setInt('n',14);
    }
    if(_result<=18.5){
      prefs.setInt('gain',1);
    }
    else{
      prefs.setInt('gain',0);
    }
    prefs.setInt('exc',0);
    prefs.setInt('cal',0);
    prefs.setInt('points',0);
    prefs.setStringList('coup', []);
    Navigator.pop(context,"back");

  }
}
