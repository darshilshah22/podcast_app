import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:podcast_app/constants/colors.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/constants/images.dart';
import 'package:podcast_app/screens/play_screen.dart';
import 'package:podcast_app/size_config.dart';
import 'package:podcast_app/widgets/button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildTopBar(),
          Container(
            margin: EdgeInsets.only(top: h7, left: w5, right: w5),
            child: Column(
              children: [
                buildAppBar(),
                buildProfilePicture(),
                SizedBox(height: w3),
                Text("UI Breakfast",
                    style: customStyle(
                        color: ColorsConst.textColor, fontSize: 24)),
                SizedBox(height: w1),
                Text("UI/UX Design And Product Strategy",
                    style: customStyle(
                        color: ColorsConst.textColor.withOpacity(0.5))),
                buildStats(),
                buildControls(),
                Expanded(child: buildEpisodeList())
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTopBar() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1478737270239-2f02b77fc618?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
                  fit: BoxFit.fill)),
        ),
        ClipRRect(
          clipBehavior: Clip.none,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            blendMode: BlendMode.screen,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorsConst.pink,
                      Colors.white,
                    ]),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildAppBar() {
    return Container(
      margin: EdgeInsets.only(left: 0, right: w5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.arrow_back_rounded, color: Colors.white),
          const Spacer(),
          Text(
            "Podcast Detail",
            style: customStyle(fontSize: 24, color: Colors.white),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget buildProfilePicture() {
    return Container(
      height: h15,
      width: h15,
      margin: EdgeInsets.only(top: h5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 4),
        borderRadius: BorderRadius.circular(24),
        image: const DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1605089103010-bcba7ca9b10d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHBvZGNhc3QlMjBzdHVkaW98ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
            fit: BoxFit.cover,
            alignment: Alignment.center),
      ),
    );
  }

  Widget buildStats() {
    return Container(
      margin: EdgeInsets.only(top: h4, left: w8, right: w8),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("12K",
                    style: customStyle(
                        color: ColorsConst.textColor, fontSize: 24)),
                SizedBox(height: w1),
                Text("Followers",
                    style: customStyle(
                        color: ColorsConst.textColor.withOpacity(0.5))),
              ],
            ),
            VerticalDivider(
              width: h1,
              indent: 6,
              endIndent: 10,
              color: Colors.black45,
            ),
            Column(
              children: [
                Text("250",
                    style: customStyle(
                        color: ColorsConst.textColor, fontSize: 24)),
                SizedBox(height: w1),
                Text("Episodes",
                    style: customStyle(
                        color: ColorsConst.textColor.withOpacity(0.5))),
              ],
            ),
            VerticalDivider(
              width: h1,
              indent: 6,
              endIndent: 10,
              color: Colors.black45,
            ),
            Column(
              children: [
                Text("1.2M",
                    style: customStyle(
                        color: ColorsConst.textColor, fontSize: 24)),
                SizedBox(height: w1),
                Text("Listener",
                    style: customStyle(
                        color: ColorsConst.textColor.withOpacity(0.5))),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildControls() {
    return Container(
      margin: EdgeInsets.only(top: h3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const BuildButton(),
          SizedBox(width: w5),
          Image.asset(Images.heart, height: h3_5),
          SizedBox(width: w5),
          Image.asset(Images.download, height: h3_5),
          SizedBox(width: w5),
          Image.asset(Images.more, height: h3_5),
        ],
      ),
    );
  }

  Widget buildEpisodeList() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: h3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Episodes",
                  style: customStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorsConst.textColor)),
              Icon(Icons.arrow_forward_ios_rounded,
                  color: ColorsConst.textColor, weight: h1, size: h2_5)
            ],
          ),
        ),
        SizedBox(height: h2),
        Expanded(
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.only(bottom: h2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const PlayScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: h2),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.asset(Images.podcast1, height: h10)),
                        SizedBox(width: w3),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "UIX Design University | Listen to the future of the UI/UX Design",
                                maxLines: 2,
                                style: customStyle(
                                    color: ColorsConst.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(height: h1),
                              Text(
                                "UI Breakfast | 25:30",
                                maxLines: 2,
                                style: customStyle(
                                    color:
                                        ColorsConst.textColor.withOpacity(0.7)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 8),
                                    blurRadius: 16,
                                    color: Color.fromRGBO(134, 93, 255, 0.10))
                              ]),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsConst.purple,
                            ),
                            child: Image.asset(Images.play, height: h3),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
