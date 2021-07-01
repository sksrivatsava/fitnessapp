import 'dart:ui';

import 'package:fitnessapp/bmi2.dart';
import 'package:fitnessapp/caloriesgain.dart';
import 'package:fitnessapp/coupons.dart';
import 'package:fitnessapp/goodfit.dart';
import 'package:fitnessapp/info.dart';
import 'package:fitnessapp/weightloss.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  dynamic plan;
  dynamic bmi;
  dynamic bmi2;
  dynamic i;
  dynamic n;
  dynamic cal=0;
  dynamic poi=0;
  dynamic exc=0;

  SharedPreferences prefs;
  void getBmi() async{
 prefs = await SharedPreferences.getInstance();
// setState(() {
//   bmi=prefs.getDouble('bmi').toStringAsFixed(2);
//   bmi2=prefs.getDouble('bmi');
//   i=prefs.getInt('i');
//   n=prefs.getInt('n');
//   cal=prefs.getInt('cal');
//   poi=prefs.getInt('points');
//   plan=prefs.getInt('gain');
//   exc=prefs.getInt('exc');
// });

}

  @override
  Widget build(BuildContext context) {
   getBmi();
    return Scaffold(
      appBar: AppBar(

        title: Text('Fitness app '),
        actions: [
          Row(
            children: [

              Text('settings'
                ,style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              IconButton(

                  icon: Icon(

                  Icons.settings,


              ),
                  onPressed: () async{
                      dynamic x=await Navigator.push(context, MaterialPageRoute(builder: (context)=>Demo1()));
                      if(x=="back"){
                        getBmi();
                      }
                  }),
            ],
          ),
          Row(
            children: [
              Text('Coupons'
                ,style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              IconButton(icon: Icon(

                Icons.card_giftcard,

              ),
                  onPressed: () async{
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>coupons()));
                  }),
            ],
          )
        ],
      ),

      body: Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        SizedBox(width: 20,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${cal.toString()}\n kcal ${plan==1?'gain':'loss'}',
                            style: TextStyle(
                              fontSize:15.0,
                              fontWeight: FontWeight.bold,
                            ),

                          ),

                        ),
                        SizedBox(width: 10,),

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

              Text('buy coupons with your points. \nto reset/change the plan go to settings'
              ,style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Based on your BMI(${bmi}) we recommend below plan:',

                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              bmi2!=null?
              bmi2<=18.5?GestureDetector(
                child: Card(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/goodfit.jpg'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,

                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                        )
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Calories gain plan',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>caloriesgain()));
                },
              ):bmi2<=24.9?GestureDetector(
                child: Card(
                  child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/goodfit.jpg'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,

                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                          )
                      ),

                  child: Center(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Good fit plan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
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
                        )
                      ],
                    ),
                  ),
                  ),
                ),
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>goodfit()));
                },
              ):GestureDetector(
                child: Card(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/goodfit.jpg'),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter,

                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),

                        )
                    ),

                    child: Center(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('weight loss plan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
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
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>weightloss()));
                },
              ):Text('Loading..'),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CarouselSlider(
                  options: CarouselOptions(

                      height: 100.0,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,

                  ),
                  items: quot.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            padding: EdgeInsets.all(10.0),
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.blue,
                            ),
                            child: Center(child: Text(' $i', style: TextStyle(fontSize: 16.0,
                            color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),))
                        );
                      },
                    );
                  }).toList(),
                ),
              )
            ],
        ),
      ),
    );
  }
}
