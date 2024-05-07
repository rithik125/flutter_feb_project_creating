import 'package:flutter/material.dart';
import 'package:flutter_feb_project_creating/models/grideview_background_imagee.dart';

void main() {
  runApp(MaterialApp(
    home: grid_view_backgroimage(),
  ));
}

class grid_view_backgroimage extends StatelessWidget {
  var Gdata = [
    GriDvv(
        image:
            "https://cdn.pixabay.com/photo/2019/03/31/14/31/houses-4093227_640.jpg",
        name: "ITALY"),
    GriDvv(
        image:
            "https://www.shutterstock.com/image-photo/new-york-city-usa-600nw-412523491.jpg",
        name: "UNITED STATES"),
    GriDvv(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7wT6Tequct1KTrjEJbwDq2hW0VyZGPh1ObqWfdmQ87Q&s",
        name: "Africa"),
    GriDvv(
        image:
            "https://media.istockphoto.com/id/1058684436/photo/landmark-skyline-of-beijng-china.jpg?s=612x612&w=0&k=20&c=_3D3KNKw7UiULBui9WTNagdAggAcMHeWvkw64DRFl3M=",
        name: "CHINA"),
    GriDvv(
        image:
            "https://gaijinpot.scdn3.secure.raxcdn.com/app/uploads/sites/4/2022/02/GPBlog_MissingJapan_alex-knight-unsplash.jpg",
        name: "JAPAN"),
    GriDvv(
        image:
            "https://assets.traveltriangle.com/blog/wp-content/uploads/2015/10/gardens-by-the-bay-image.jpg",
        name: "SINGAPORE")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  childCount: Gdata.length,
                  (context, index) => Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  Gdata[index].image!,
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Align(
                            alignment: FractionalOffset.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(Gdata[index].name!,style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 13),),
                            )),
                      )),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12))
        ],
      )),
    );
  }
}
