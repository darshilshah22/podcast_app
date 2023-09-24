import 'package:flutter/material.dart';
import 'package:podcast_app/constants/colors.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/constants/images.dart';
import 'package:podcast_app/constants/strings.dart';
import 'package:podcast_app/size_config.dart';

class BuildTextField extends StatefulWidget {
  const BuildTextField({super.key});

  @override
  State<BuildTextField> createState() => _BuildTextFieldState();
}

class _BuildTextFieldState extends State<BuildTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: h2, horizontal: h2),
      padding: EdgeInsets.all(w3),
      decoration: BoxDecoration(
          color: ColorsConst.textColor.withOpacity(0.04),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Image.asset(Images.search, height: h2_5),
          SizedBox(width: w3),
          Expanded(
            child: TextFormField(
              style: customStyle(
                  color: ColorsConst.textColor, fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: Strings.searchHint,
                  hintStyle: customStyle(
                      color: ColorsConst.textColor.withOpacity(0.6),
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Image.asset(Images.filter, height: h2_5),
        ],
      ),
    );
  }
}
