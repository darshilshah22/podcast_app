import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast_app/constants/colors.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/constants/images.dart';
import 'package:podcast_app/size_config.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  double seconds = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: h8,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_rounded, color: ColorsConst.textColor),
        title: Text(
          "Podcast Detail",
          style: customStyle(fontSize: 24, color: ColorsConst.textColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          // buildAppBar(),
          Image.asset(Images.feeling),
          SizedBox(height: w3),
          Padding(
            padding: EdgeInsets.only(left: h7, right: h7),
            child: Text("612: Eliza Jackson  |  The Real Life of a UI Designer",
                textAlign: TextAlign.center,
                style: customStyle(color: ColorsConst.textColor, fontSize: 24)),
          ),
          SizedBox(height: w3),
          Text("UI Breakfast Show",
              style:
                  customStyle(color: ColorsConst.textColor.withOpacity(0.5))),
          Padding(
            padding: EdgeInsets.only(left: w3, right: w3),
            child: Slider(
              activeColor: ColorsConst.pink,
              inactiveColor: ColorsConst.textColor.withOpacity(0.1),
              value: seconds,
              min: 0,
              max: 300,
              onChanged: (double value) {
                // Add code to track the music duration.
                // audioPlayer!.seek(position);
              },
            ),
          ),
          Spacer(),
          buildControls()
        ],
      )),
    );
  }

  Widget buildAppBar() {
    return Container(
      margin: EdgeInsets.only(left: w5, right: w5, top: h2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_back_rounded, color: ColorsConst.textColor),
          const Spacer(),
          Text(
            "Podcast Detail",
            style: customStyle(fontSize: 24, color: ColorsConst.textColor),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildControls() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w5, vertical: h3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Images.prev, height: h4),
          Image.asset(Images.backward, height: h4),
          Image.asset(Images.play1, height: h10),
          Image.asset(Images.forward, height: h4),
          SvgPicture.asset(Images.next, height: h4),
        ],
      ),
    );
  }
}
