import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantView extends StatelessWidget {
  final String? imagepath;
  final String? title;
  final String? cat;
  final String? price;

  const PlantView(
      {super.key, this.imagepath, this.title, this.cat, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(imagepath ?? ""))),
        ),
        Text(
          title ?? "",
          style: GoogleFonts.aBeeZee(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            cat ?? "",
            style: GoogleFonts.aBeeZee(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),

      ],
    );
  }
}
