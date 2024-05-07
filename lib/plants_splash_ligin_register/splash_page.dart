import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/login_page.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/register_page.dart';
import 'package:flutter_feb_project_creating/widgets/textstyel.dart';

import '../widgets/background_image.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Splash_page(),));
}
class Splash_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Align(
              alignment: FractionalOffset.centerLeft,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "The best",
                          style: topHeading,
                        ),
                        Text(
                          "app for",
                          style: topHeading,
                        ),
                        Text(
                          "your plants",
                          style: topHeading,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 90,
            ),
            MaterialButton(
              onPressed: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register_page()));
              },
              color: Colors.white,
              child: Text("register here"),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              minWidth: 300,
              height: 40,
            ),
            SizedBox(
              height: 18,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login_page()));
              },
              color: MyColors.materilBottum,
              child:
                  Text("Login ", style: TextStyle(color: Colors.white)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              minWidth: 300,
              height: 40,
            )
          ],
        ),
      )
    ]);
  }
}
