import 'package:flutter/material.dart';
import 'package:podcast_app/constants/colors.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/constants/images.dart';
import 'package:podcast_app/size_config.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: w2, horizontal: w3),
      decoration: BoxDecoration(
          color: ColorsConst.purple, borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(Images.play),
          SizedBox(width: w2),
          Text(
            "Play",
            style: customStyle(fontSize: 18, color: Colors.white),
          )
        ],
      ),
    );
  }
}
