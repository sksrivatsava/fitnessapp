import 'package:shared_preferences/shared_preferences.dart';
Future<double> getBmi() async{

  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getDouble('bmi');

}