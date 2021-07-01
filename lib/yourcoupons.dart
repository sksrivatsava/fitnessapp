import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'info.dart';

class yourcoupons extends StatefulWidget {
  @override
  _yourcouponsState createState() => _yourcouponsState();
}

class _yourcouponsState extends State<yourcoupons> {

  List<dynamic> l=[];
  void getData() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      l=prefs.getStringList('coup');
    });
    print(l);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('your Coupons'),
      ),
      body: Container(
        child: l.isNotEmpty?ListView.builder(
          itemCount: l.length,
          itemBuilder: (context,index){

            return Card(
              child: Row(
                children: [
                  Image.asset(cl[int.parse(l[index])].img,
                    width: 50.0,
                    height: 50.0,

                  ),
                  SizedBox(width: 10.0,),
                  Expanded(child: Text(cl[int.parse(l[index])].name)),
              
                  Text(cl[int.parse(l[index])].rate.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),





                ],
              ),
            );
          },

        ):Center(
          child: Text(
            'Did not buy any Coupon yet',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
