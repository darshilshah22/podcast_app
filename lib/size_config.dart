import 'package:flutter/material.dart';

class SizeConfig {
  double? height;
  double? width;
  double? heightFactor;
  double? widthFactor;

  getDimension(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    heightFactor = height! / 100; // 11
    widthFactor = width! / 100; // 5
  }
}

SizeConfig sizeConfig = SizeConfig();

double h1 = 1.0 * sizeConfig.heightFactor!;
double h1_5 = 1.5 * sizeConfig.heightFactor!;
double h2 = 2.0 * sizeConfig.heightFactor!;
double h2_5 = 2.5 * sizeConfig.heightFactor!;
double h3 = 3.0 * sizeConfig.heightFactor!;
double h3_5 = 3.5 * sizeConfig.heightFactor!;
double h4 = 4.0 * sizeConfig.heightFactor!;
double h4_5 = 4.5 * sizeConfig.heightFactor!;
double h5 = 5.0 * sizeConfig.heightFactor!;
double h5_5 = 5.5 * sizeConfig.heightFactor!;
double h6 = 6.0 * sizeConfig.heightFactor!;
double h6_5 = 6.5 * sizeConfig.heightFactor!;
double h7 = 7.0 * sizeConfig.heightFactor!;
double h7_5 = 7.5 * sizeConfig.heightFactor!;
double h8 = 8.0 * sizeConfig.heightFactor!;
double h8_5 = 8.5 * sizeConfig.heightFactor!;
double h9 = 9.0 * sizeConfig.heightFactor!;
double h9_5 = 9.5 * sizeConfig.heightFactor!;
double h10 = 10.0 * sizeConfig.heightFactor!;
double h10_5 = 10.5 * sizeConfig.heightFactor!;
double h11 = 11.0 * sizeConfig.heightFactor!;
double h12 = 12.0 * sizeConfig.heightFactor!;
double h13 = 13.0 * sizeConfig.heightFactor!;
double h14 = 14.0 * sizeConfig.heightFactor!;
double h15 = 15.0 * sizeConfig.heightFactor!;
double h16 = 16.0 * sizeConfig.heightFactor!;
double h17 = 17.0 * sizeConfig.heightFactor!;


double w1 = 1.0 * sizeConfig.widthFactor!;
double w1_5 = 1.5 * sizeConfig.widthFactor!;
double w2 = 2.0 * sizeConfig.widthFactor!;
double w2_5 = 2.5 * sizeConfig.widthFactor!;
double w3 = 3.0 * sizeConfig.widthFactor!;
double w3_5 = 3.5 * sizeConfig.widthFactor!;
double w4 = 4.0 * sizeConfig.widthFactor!;
double w4_5 = 4.5 * sizeConfig.widthFactor!;
double w5 = 5.0 * sizeConfig.widthFactor!;
double w5_5 = 5.5 * sizeConfig.widthFactor!;
double w6 = 6.0 * sizeConfig.widthFactor!;
double w6_5 = 6.5 * sizeConfig.widthFactor!;
double w7 = 7.0 * sizeConfig.widthFactor!;
double w7_5 = 7.5 * sizeConfig.widthFactor!;
double w8 = 8.0 * sizeConfig.widthFactor!;
double w8_5 = 8.5 * sizeConfig.widthFactor!;
double w9 = 9.0 * sizeConfig.widthFactor!;
double w9_5 = 9.5 * sizeConfig.widthFactor!;
double w10 = 10.0 * sizeConfig.widthFactor!;
double w10_5 = 10.5 * sizeConfig.widthFactor!;
double w11 = 11.0 * sizeConfig.widthFactor!;
double w12 = 12.0 * sizeConfig.widthFactor!;
double w14 = 14.0 * sizeConfig.widthFactor!;
double w15 = 15.0 * sizeConfig.widthFactor!;
double w16 = 16.0 * sizeConfig.widthFactor!;
double w17 = 17.0 * sizeConfig.widthFactor!;
