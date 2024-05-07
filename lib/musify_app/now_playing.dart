import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class now_playeingg extends StatefulWidget {
  const now_playeingg({super.key});

  @override
  State<now_playeingg> createState() => _now_playeinggState();
}

class _now_playeinggState extends State<now_playeingg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("Now Playing",style: GoogleFonts.aBeeZee(fontSize:40,fontWeight:FontWeight.bold,
            textStyle: TextStyle(color: Colors.pink[200],
              letterSpacing: .5,)
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),height: 400,width:400,child: Image(fit:BoxFit.fill,image: NetworkImage("https://i.iheart.com/v3/re/new_assets/635026f0aee0f4b0e56f9a3e?ops=contain(1480,0)"),),),
              Text("FEARLESS",style: GoogleFonts.aBeeZee(fontSize:40,fontWeight:FontWeight.bold,
                  textStyle: TextStyle(color: Colors.pink[200],
                  letterSpacing: .5,)
              ),
              ),
              Text(
                'Taylor Swift',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.pink[200], letterSpacing: .5),
                ),
              ),
              SizedBox(
                height: 17,
              ),

              Slider(thumbColor:Colors.pink,activeColor: Colors.pink,
                  min: 0, max: 100, value: 50, onChanged: (valu) {}),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("02:10",style: TextStyle(color: Colors.white),),
                  Text("03:21",style: TextStyle(color: Colors.white),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        FaIcon(
                          Icons.download,color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(height: 10,),
                        FaIcon(
                          Icons.volume_off,color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [

                      Icon(Icons.shuffle,color: Colors.white,size: 30,),
                      SizedBox(width: 30,),
                      Row(
                        children: [
                          FaIcon(
                            Icons.skip_previous,
                            size: 30,color: Colors.white,
                          ),
                          FaIcon(
                            Icons.pause_circle,
                            size: 30,color: Colors.white,
                          ),
                          FaIcon(
                            Icons.skip_next,
                            size: 30,color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Icon(Icons.repeat,color: Colors.white,size: 30,),


                    ],
                  ),

                  Column(
                    children: [
                      FaIcon(
                        Icons.star,color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FaIcon(
                        Icons.queue_music_sharp,color: Colors.white,
                        size: 15,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
