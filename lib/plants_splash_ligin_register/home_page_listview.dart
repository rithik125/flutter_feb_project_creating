import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/models/plant_data_model.dart';
import 'dart:math' as math;

import 'package:flutter_feb_project_creating/widgets/plant_textstyel.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Home_page_plant(),
  ));
}

class Home_page_plant extends StatelessWidget {
  var data = [
    Plants(
        image:
            "https://nurserylive.com/cdn/shop/products/nurserylive-g-kaner-nerium-oleander-pink-single-plant.jpg?v=1634222913",
        name: "Nerium",
        ml: "100ml"),
    Plants(
        image: "https://nurserylive.com/cdn/shop/products/nurserylive-g-plants-kaner-nerium-oleander-any-color-plant-in-grower-round-black-pot-649590.jpg?v=1679750400",
        name: "Oleander",
        ml: "200ml"),
    Plants(
        image: "https://rukminim2.flixcart.com/image/850/1000/xif0q/plant-sapling/q/l/v/no-annual-yes-tulsi-live-plant-medium-1-grow-bag-single-boy-original-imagtf7geahyftsz.jpeg?q=20&crop=false",
        name: "Tulsi",
        ml: "100ml"),
    Plants(
        image: "https://tumbleweedplants.com/cdn/shop/files/dracena-fragrans-iron-tree-single-stem-06m-sedona-stand-potted-plant-tumbleweed-plants-457794.jpg?v=1712349700&width=600",
        name: "Tumbleweed",
        ml: "80ml"),
    Plants(
        image: "https://www.urbanplant.in/cdn/shop/products/Singlecopy.webp?v=1685609449&width=2000",
        name: "Midland Lawn Patio",
        ml: "200ml"),
    Plants(
        image: "https://dy1yydbfzm05w.cloudfront.net/media/catalog/product/cache/466bc07fdd9f3406dd5cbfa6621097e2/p/l/plants_aloe_vera_white_pot_hero_6.jpg",
        name: "Aloe Vera",
        ml: "120ml"),
    Plants(
        image: "https://rukminim2.flixcart.com/image/850/1000/xif0q/plant-sapling/q/l/v/no-annual-yes-tulsi-live-plant-medium-1-grow-bag-single-boy-original-imagtf7geahyftsz.jpeg?q=20&crop=false",
        name: "Tulsi",
        ml: "100ml"),
    Plants(
        image: "https://tumbleweedplants.com/cdn/shop/files/dracena-fragrans-iron-tree-single-stem-06m-sedona-stand-potted-plant-tumbleweed-plants-457794.jpg?v=1712349700&width=600",
        name: "Tumbleweed",
        ml: "80ml"),
    Plants(
        image: "https://www.urbanplant.in/cdn/shop/products/Singlecopy.webp?v=1685609449&width=2000",
        name: "Midland Lawn Patio",
        ml: "200ml"),
    Plants(
        image: "https://dy1yydbfzm05w.cloudfront.net/media/catalog/product/cache/466bc07fdd9f3406dd5cbfa6621097e2/p/l/plants_aloe_vera_white_pot_hero_6.jpg",
        name: "Aloe Vera",
        ml: "120ml"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.settings),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 18,
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Water Today",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Expanded(
                child: ListView.separated(itemBuilder: (context,index)=>Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: 100,width: 180,
                    decoration: BoxDecoration(
                        color: Colors.primaries[math.Random().nextInt(Colors.primaries.length)],borderRadius: BorderRadius.circular(20)
                    ),
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.network('${data[index].image}'),
                            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(data[index].name!,style: headText,),
                                Row(
                                  children: [
                                    Icon(Icons.water_drop_outlined,size: 20,),
                                    SizedBox(width: 10,),
                                    Text(data[index].ml!),

                                  ],
                                )
                              ],
                            ),
                            CircleAvatar(child:Icon(Icons.water_drop_outlined),)

                          ],
                        ),
                      ),
                    ),
                  ),
                ), separatorBuilder: (context,index){
                  if((index + 1) % 4 == 0){
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Fri, February 7",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    );
                  }else{
                    return Container();
                  }
                },
                    itemCount: data.length),
              ),

            ],
          ),
        ));
  }
}










