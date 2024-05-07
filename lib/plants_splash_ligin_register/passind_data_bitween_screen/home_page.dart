
import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/models/plant_data_model.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/passind_data_bitween_screen/details_page_plant.dart';
import 'package:flutter_feb_project_creating/plants_splash_ligin_register/passind_data_bitween_screen/refatering_widget_ofplant_view.dart';

void main() {
  runApp(MaterialApp(
    home: Planthome(),
    routes: {"Plantdetails": (context) => plant_details_page()},
  ));
}

class Planthome extends StatelessWidget {
  const Planthome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plant_Home_page"),
      ),
      // body: ListView.builder(
      //     itemCount: plantslist.length,
      //     itemBuilder: (context, index) =>
      // ),
      body: GridView.builder(itemCount: plantslist.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)=>InkWell(
        onTap: () => Navigator.pushNamed(
            arguments: plantslist[index].id, context, "Plantdetails"),
        child: PlantView(
          title: plantslist[index].name,
          imagepath: plantslist[index].image,
        ),
      )),
    );
  }
}
