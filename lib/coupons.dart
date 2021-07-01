import 'package:fitnessapp/info.dart';
import 'package:fitnessapp/yourcoupons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class coupons extends StatefulWidget {

  @override
  _couponsState createState() => _couponsState();
}

class _couponsState extends State<coupons> {
  dynamic poi;
  dynamic l;
  void getData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      poi=prefs.getInt('points');
      l=prefs.getStringList('coup');
      // print(l);
    });
}

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
      title: Text('Coupons'),
      actions: [
        RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            color: Colors.white,
            child: Text('your coupons'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>yourcoupons()));

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
                        child: Text('points : ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),

                        ),

                      ),
                      SizedBox(width: 50,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${poi.toString()} ',
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
            Expanded(child:
              ListView.builder(
                  itemCount: cl.length,
                  itemBuilder: (context,index){

                  return Card(
                    child: Row(
                      
                      children: [
                        Image.asset(cl[index].img,
                          width: 50.0,
                          height: 50.0,

                        ),
                        SizedBox(width: 20.0,),
                        Expanded(child: Text(cl[index].name)),
                        
                        RaisedButton(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            color: Colors.blue,

                            child: Text('${cl[index].rate.toString()}'),
                            onPressed: poi>=cl[index].rate?() async {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                                  if(poi>=cl[index].rate){
                                    var p=prefs.getInt('points');
                                    p=p-cl[index].rate;
                                    prefs.setInt('points',p);
                                    var c=prefs.getStringList('coup');
                                    c.add(index.toString());
                                    prefs.setStringList('coup', c);
                                    getData();
                                  }

                        }:null)



                      ],
                    ),
                  );

              })
            ),


          ],
        ),
      )
    );
  }
}
