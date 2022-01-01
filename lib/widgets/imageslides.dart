import 'package:flutter/material.dart';
import 'package:game_store_app/models/image_slide.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageSlides extends StatelessWidget {
  final ImageSlidesModel slides;

  ImageSlides(this.slides);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(17),
          margin: const EdgeInsets.only(left: 5, right: 5),
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: Image.asset(
            slides.img,
            fit: BoxFit.fitWidth,
          ),
        ),
        Text(
          slides.desc,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
