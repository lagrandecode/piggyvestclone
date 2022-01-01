import 'package:flutter/material.dart';
import 'package:game_store_app/models/image_slide.dart';

import 'imageslides.dart';



class ImageSlideHolder extends StatelessWidget {
  final slides = ImageSlidesModel.generateSlides();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (_, index)=> ImageSlides(slides[index]),
          separatorBuilder: (_, index)=> const SizedBox(width: 20.0,),
          itemCount: slides.length),
    );
  }
}
