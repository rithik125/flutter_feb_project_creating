import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  var playlist = [
    {
      "image":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsfNzJ65Njw3meZDsUuzWyQs9TIaqXdN0NMypoqOy0rw&s"
    },
    {
      "image":
      "https://i1.sndcdn.com/artworks-000418270365-cmuoli-t500x500.jpg"
    },
    {
      "image":
      "https://m.media-amazon.com/images/I/61fnfjsJq9L._UF1000,1000_QL80_DpWeblab_.jpg"
    },
    {
      "image":
      "https://tse2.mm.bing.net/th?id=OIP.F7umeZD0INtcavsxkhvJIwHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
      "https://tse4.mm.bing.net/th?id=OIP.2xCbGx220AynmwWlI2eYRQHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
      "https://tse4.mm.bing.net/th?id=OIP.i1OZqWleeP1DK_VEfxFjEQHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
      "https://tse3.mm.bing.net/th?id=OIP.s4HrGC2SlsUQvOSMGgXVwgHaHa&pid=Api&P=0&h=180"
    },
    {
      "image":
      "https://tse3.mm.bing.net/th?id=OIP.akYJGngJISTsUn7jZ8VAdgHaHa&pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
              "Playlist",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 20),
                    hintText: "Search Here .... ",
                    suffixIcon: Icon(Icons.search_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                children: List.generate(
                  8,
                      (index) => Card(color: Colors.black,
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),image: DecorationImage(image: NetworkImage("${playlist[index]['image']}"),fit: BoxFit.cover)),
                      // color: Colors.black,
                      // child: Column(children: [
                      //   Image.network(
                      //     "${playlist[index]["image"]}",
                      //     fit: BoxFit.fitHeight,
                      //   ),
                      // ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}