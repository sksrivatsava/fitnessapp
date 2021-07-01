import 'package:fitnessapp/info.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class goodfitact extends StatefulWidget {
  final day;
  final check;

  goodfitact(this.day, this.check);
  @override
  _goodfitactState createState() => _goodfitactState();
}

class _goodfitactState extends State<goodfitact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day ${widget.day.toString()}'),
      ),
      body: Container(
          child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Meal Plan: ',

              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'BreakFast: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(child: Text('${goodfitmeal[widget.day % 7][0]}'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Lunch: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(child: Text('${goodfitmeal[widget.day % 7][1]}'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Dinner: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(child: Text('${goodfitmeal[widget.day % 7][2]}'))
                    ],
                  ),
                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Workouts: ',

              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(

              child: ListView.builder(
                  itemCount: goodfitwk[widget.day%2].length,
                  itemBuilder: (contex,index){

                return Card(
                  child: Row(
                  children: [
                  Image.asset(goodfitwk[widget.day%2][index].gif,
                    width: 100.0,
                    height: 100.0,

                  ),

                    SizedBox(width: 20.0,),
                    Text(goodfitwk[widget.day%2][index].wname)
                  ],
                  ),
                );

              })),



          Center(
              child: widget.check == 'c'
                  ?RaisedButton(onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blue,
                child: Text('Completed'),

              )
                  : widget.check == 'p'
                      ? RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          color: Colors.blue,
                          child: Text('Complete the day'),
                          onPressed: () async {
                            SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            var i = prefs.getInt('i');
                            prefs.setInt('i', i + 1);
                            var cal = prefs.getInt('cal');
                            prefs.setInt('cal', cal + 25);
                            var poi = prefs.getInt('points');
                            prefs.setInt('points', poi + 100);
                            var exc = prefs.getInt('exc');
                            prefs.setInt('exc', exc + 5);

                            Navigator.pop(context, 'back');
                          })
                      : RaisedButton(onPressed: null,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                color: Colors.blue,
                child: Text('please complete above day first'),

              )
          ),
        ],
      )),
    );
  }
}

// Center(
// child: widget.check=='c'?Text('Completed'):widget.check=='p'?
// RaisedButton(
// child: Text('Complete the day'),
// onPressed: () async{
// SharedPreferences prefs=await SharedPreferences.getInstance();
// var i=prefs.getInt('i');
// prefs.setInt('i', i+1);
// var cal=prefs.getInt('cal');
// prefs.setInt('cal', cal+25);
// var poi=prefs.getInt('points');
// prefs.setInt('points', poi+100);
//
// Navigator.pop(context,'back');
//
//
//
//
// }):Text('complete above days first')
// ),
