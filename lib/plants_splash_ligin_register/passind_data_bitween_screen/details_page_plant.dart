import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/models/plant_data_model.dart';

class plant_details_page extends StatelessWidget {
late Plants plan;

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    plan = plantslist[index];
    return Scaffold(
      appBar: AppBar(title: Text(plan.name ?? ""),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(plan.image ?? ""),
          Text(plan.name ?? ""),
          Text(plan.description ?? "")
        ],
      ),
    );
  }
}
