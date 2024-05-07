import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/Tourism_App/model_tourism_app.dart';
import 'package:flutter_feb_project_creating/models/plant_data_model.dart';

class details_page extends StatelessWidget {
late TouRiSam sam;

  @override
  Widget build(BuildContext context) {
  final index = ModalRoute.of(context)?.settings.arguments as int;
   sam = placeList[index];
    return Scaffold(
      appBar: AppBar(
        title: Text('${sam.name}Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Image.network(sam.image?? ""),
          Text('${sam.description}')


        ],
      ),
    );
  }
}
