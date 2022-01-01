import 'package:flutter/material.dart';


class ImageSlidesModel{
  String img;
  String name;
  String desc;
  
  ImageSlidesModel(this.img, this.name, this.desc);
  
  static List<ImageSlidesModel> generateSlides() {
    return [
      ImageSlidesModel("assets/images/031.png", "image1",
          "Setup multiple savings \ngoals and reach them"),
      ImageSlidesModel("assets/images/041.png", "image2", "Build your savings \nwith ease & discipline"),
      ImageSlidesModel("assets/images/031.png", "image3", "Invest with ease \nin verified opportunities"),
      ImageSlidesModel("assets/images/043.png", "image3", "Lock funds \nyou dont want to be tempted to touch")];
}
}