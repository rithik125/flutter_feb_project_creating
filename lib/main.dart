import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/splash_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,home: Splash_page(),);
  }
}