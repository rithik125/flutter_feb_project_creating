import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class Mucis_playlist_suggecstedd extends StatefulWidget {


  @override
  State<Mucis_playlist_suggecstedd> createState() =>
      _Mucis_playlist_suggecsteddState();
}

class _Mucis_playlist_suggecsteddState
    extends State<Mucis_playlist_suggecstedd> {
  var playlist = [
    {
      "song": "Hero",
      "artist": "Taylor Swift",
      "pic": "https://tse4.mm.bing.net/th?id=OIP.6Q0XSjCAsitGPvVQxovEDgAAAA&pid=Api&P=0&h=180",
    },
    {
      "song": "Unholy",
      "artist": "Sam Smith,Kim Petras",
      "pic": "https://tse4.mm.bing.net/th?id=OIP.RwpGwojbO0ezCo_QsyeLCwAAAA&pid=Api&P=0&h=180"
    },
    {
      "song": "Lift me up",
      "artist": "Rihanna",
      "pic": "https://tse4.explicit.bing.net/th?id=OIP.DHNYykmhjdK5KdwKzxQ7OgHaHa&pid=Api&P=0&h=180"
    },
    {
      "song": "Depression",
      "artist": "Dax",
      "pic": "https://tse3.mm.bing.net/th?id=OIP.impuKeM1IuyZC9aTz43onQHaHa&pid=Api&P=0&h=180"
    },
    {
      "song": "Hero",
      "artist": "Taylor Swift",
      "pic": "https://tse4.mm.bing.net/th?id=OIP.6Q0XSjCAsitGPvVQxovEDgAAAA&pid=Api&P=0&h=180",
    },
    {
      "song": "Unholy",
      "artist": "Sam Smith,Kim Petras",
      "pic": "https://tse4.mm.bing.net/th?id=OIP.RwpGwojbO0ezCo_QsyeLCwAAAA&pid=Api&P=0&h=180"
    },
    {
      "song": "Lift me up",
      "artist": "Rihanna",
      "pic": "https://tse4.explicit.bing.net/th?id=OIP.DHNYykmhjdK5KdwKzxQ7OgHaHa&pid=Api&P=0&h=180"
    },
    {
      "song": "Depression",
      "artist": "Dax",
      "pic": "https://tse3.mm.bing.net/th?id=OIP.impuKeM1IuyZC9aTz43onQHaHa&pid=Api&P=0&h=180"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text("Musify",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(alignment: Alignment.topLeft,
              child: Text(textAlign: TextAlign.start,"Suggested playlist",style:GoogleFonts.lato(
                letterSpacing: 5,fontSize: 20,fontWeight: FontWeight.bold
              )
              ),
            ),
          ),
          CarouselSlider(items: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1621535484902-f946de404eb4?q=80&w=386&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIC_Oq_RkAT4bkuTiC0C_hMpoAMyEuyzCMY4WlUVOWgQ&s"))),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://i0.wp.com/www.printmag.com/wp-content/uploads/2021/06/fdcd5a_9f83d7f99aec4d9a8ff4aad3dffa301cmv2-1.png?resize=1000%2C667&quality=80&ssl=1"))),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://res.cloudinary.com/upwork-cloud/image/upload/c_scale,w_1000/v1686179526/catalog/1416449429282631680/ymngwozssnfrkfbvevg3.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://mir-s3-cdn-cf.behance.net/projects/404/c02aaf191977365.Y3JvcCwyOTQ5LDIzMDcsNDU5LDA.jpg"))),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://lirp.cdn-website.com/e00ccc9d/dms3rep/multi/opt/Album-Cover-Art-652x435-7149f5c7-640w.jpg"))),
            )
          ], options: CarouselOptions(
            height: 280,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                alignment: Alignment.topLeft, child: Text("Recommended for you",style:GoogleFonts.lato(
                letterSpacing: 5,fontSize: 17,fontWeight: FontWeight.bold
            ) )),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: List.generate(playlist.length, (index) =>
                  Card(
                    child: Container(child:
                    ListTile(
                      leading: Image.network("${playlist[index]['pic']}"),
                      title: Text("${playlist[index]['song']}"),
                      subtitle: Text("${playlist[index]['artist']}"),
                      trailing: Wrap(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.download,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    ),
                  ))
            ),
          )
        ],
      ),
    );
  }
}
