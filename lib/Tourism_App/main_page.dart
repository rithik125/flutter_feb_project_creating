import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/Tourism_App/model_tourism_app.dart';
import 'package:flutter_feb_project_creating/Tourism_App/placedetailss.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/passind_data_bitween_screen/refatering_widget_ofplant_view.dart';

void main() {
  runApp(MaterialApp(
    home: main_page_popular(),
    routes: {
      "PlaceDetails": (context)=>details_page()
    },
  ));
}

class main_page_popular extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemCount: placeList.length,itemBuilder: (context,index){
          return InkWell(
            onTap: ()=>Navigator.pushNamed(context, "PlaceDetails",arguments:index),
            child: PlantView(
              imagepath: placeList[index].image,
              title: placeList[index].name,

            ),
          );
        })
    );
  }
}
