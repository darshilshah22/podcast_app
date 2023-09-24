import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcast_app/constants/images.dart';

TextStyle customStyle(
    {Color? color, FontWeight? fontWeight, double? fontSize}) {
  return GoogleFonts.outfit(
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontSize: fontSize ?? 16);
}

class PodcastModel {
  String? image;
  String? title;
  String? subTitle;

  PodcastModel({this.image, this.title, this.subTitle});
}

List<PodcastModel> podcasts = [
  PodcastModel(
    image: Images.category2,
    title: "Self Development",
    subTitle: "150+ Podcasts"
  ),
  PodcastModel( 
    image: Images.category1,
    title: "Motivational Podcasts",
    subTitle: "200+ Podcasts"
  ),
  PodcastModel(
    image: Images.science,
    title: "Science Podcasts",
    subTitle: "150+ Podcasts"
  ),
];