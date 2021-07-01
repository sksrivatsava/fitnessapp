import 'package:fitnessapp/goodfitact.dart';
import 'package:fitnessapp/weightlossact.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'caloriesgainact.dart';

class caloriesgain extends StatefulWidget {
  @override
  _caloriesgainState createState() => _caloriesgainState();
}


class _caloriesgainState extends State<caloriesgain> {
  dynamic i;
  dynamic n;
  dynamic cal=0;
  dynamic poi=0;
  dynamic exc=0;
  List<dynamic> l=[];
  void getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      i=prefs.getInt('i');
      n=prefs.getInt('n');
      cal=prefs.getInt('cal');
      poi=prefs.getInt('points');
      exc=prefs.getInt('exc');
      l=[];
    });
    for(var it=1;it<=n;it++){
      setState(() {
        l.add(it);
      });
      print(l);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      color: Colors.black,
      onPressed: () {

        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text('Congrats'),
      content: Text('congrats for completing the plan'),
      backgroundColor: Colors.green,
      actions: [
        okButton,
      ],
    );


    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('caloriesgain Plan '),
        actions: [
          IconButton(icon: Icon(Icons.restore),

              onPressed: () async {
                SharedPreferences prefs=await SharedPreferences.getInstance();
                prefs.setInt('i', 0);
                prefs.setInt('cal',0);
                prefs.setInt('points',0);
                prefs.setInt('exc',0);
                getData();


              })
        ],
      ),
      body: Container(

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${exc.toString()} \n excercises',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${cal.toString()}\n kcal gain',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),

                        ),

                      ),
                      SizedBox(width: 50,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${poi.toString()} \n points',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Progress: ',

                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearProgressIndicator(
                    value: i/n,
                  ),
                ),
                Text('${(i/n * 100).round()}%'),
              ],
            ),
            Expanded(

                child: ListView.builder(
                    itemCount: l.length,
                    itemBuilder: (context,index){
                      if(index<i){
                        return GestureDetector(
                          child: Card(
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Day ${l[index].toString()}'),
                            ),

                          ),
                          onTap: ()async {
                            dynamic x= await Navigator.push(context,MaterialPageRoute(builder: (context)=>caloriesgainact(l[index], 'c')));
                          },
                        );
                      }
                      else if(index==i){
                        return GestureDetector(
                          child: Card(
                            color: Colors.orange,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Day ${l[index].toString()}'),
                            ),
                          ),
                          onTap: () async {
                            dynamic x= await Navigator.push(context,MaterialPageRoute(builder: (context)=>caloriesgainact(l[index], 'p')));

                            if(x=='back'){
                              getData();
                            }
                            if(i==n-1){
                              showAlertDialog(context);
                            }
                          },
                        );
                      }
                      else{
                        return GestureDetector(
                          child: Card(
                            color: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Day ${l[index].toString()}'),
                            ),
                          ),
                          onTap: () async {
                            dynamic x = await Navigator.push(context,MaterialPageRoute(builder: (context)=>caloriesgainact(l[index], 'u')));

                          },
                        );
                      }


                    })

            ),
            SizedBox(height: 10.0,)
          ],
        ),
      ),
    );
  }
}
