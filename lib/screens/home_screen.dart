import 'package:flutter/material.dart';
import 'package:podcast_app/constants/colors.dart';
import 'package:podcast_app/constants/constants.dart';
import 'package:podcast_app/constants/images.dart';
import 'package:podcast_app/constants/strings.dart';
import 'package:podcast_app/screens/details_screen.dart';
import 'package:podcast_app/size_config.dart';
import 'package:podcast_app/widgets/button.dart';
import 'package:podcast_app/widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          buildHeader(),
          const BuildTextField(),
          buildCard(),
          buildPopularCategories(),
          buildNewReleases()
        ],
      )),
    );
  }

  Widget buildHeader() {
    return Container(
      margin: EdgeInsets.only(top: h3, left: w5, right: w5),
      child: Row(
        children: [
          Container(
            height: h7_5,
            width: h7_5,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Images.profileImage))),
          ),
          SizedBox(width: w3),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(
                  text: Strings.goodMorning,
                  style: customStyle(
                      color: ColorsConst.textColor.withOpacity(0.5)),
                  children: [
                    TextSpan(
                        text: " 👋",
                        style: customStyle(color: ColorsConst.textColor))
                  ])),
              SizedBox(height: w1),
              Text(Strings.name,
                  style: customStyle(
                      color: ColorsConst.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24))
            ],
          ),
          const Spacer(),
          Image.asset(Images.notification, height: h2_5)
        ],
      ),
    );
  }

  Widget buildCard() {
    return Container(
      width: sizeConfig.width,
      margin: EdgeInsets.symmetric(vertical: w3, horizontal: h2),
      decoration: BoxDecoration(
          color: ColorsConst.pink, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(h2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Podcast App Design",
                    style: customStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: w1),
                Text("Listen to the future of UI/UX",
                    style: customStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w200)),
                SizedBox(height: w3),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3),
                          shape: BoxShape.circle),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
                      ),
                    ),
                    Positioned(
                      right: -30,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1534751516642-a1af1ef26a56?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1889&q=80"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: h1),
                Text.rich(TextSpan(
                    text: "Guests: ",
                    style: customStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "Larry + Tom",
                          style: customStyle(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ])),
              ],
            ),
          ),
          Positioned(
              right: 0,
              bottom: -20,
              child: Image.asset(Images.podcast, height: h13))
        ],
      ),
    );
  }

  Widget buildPopularCategories() {
    return Column(
      children: [
        buildHeading(Strings.popularCategories),
        Container(
          height: h8,
          margin: EdgeInsets.only(top: w4),
          child: ListView.builder(
              itemCount: podcasts.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.only(left: w5, right: w1),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: w4),
                  padding: EdgeInsets.symmetric(vertical: w2, horizontal: h2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(color: ColorsConst.textColor, width: 2),
                      color: ColorsConst.textColor.withOpacity(0.04)),
                  child: Row(
                    children: [
                      Image.asset(podcasts[index].image!, height: h5),
                      SizedBox(width: w3),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(podcasts[index].title!,
                              style: customStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: ColorsConst.textColor)),
                          SizedBox(height: w1),
                          Text(podcasts[index].subTitle!,
                              style: customStyle(
                                  fontWeight: FontWeight.w200,
                                  color: ColorsConst.textColor)),
                        ],
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }

  Widget buildNewReleases() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: h3),
        padding: EdgeInsets.only(top: h2_5),
        decoration: BoxDecoration(
            color: ColorsConst.textColor.withOpacity(0.04),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32), topRight: Radius.circular(32))),
        child: Column(
          children: [
            buildHeading(Strings.newReleases),
            SizedBox(height: h1),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.only(bottom: h2, top: h2),
                  itemBuilder: (context, index) {
                    return buildPodcastContainer();
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeading(String title) {
    return Padding(
      padding: EdgeInsets.only(left: w5, right: w5, top: w2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: customStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorsConst.textColor)),
          Icon(Icons.arrow_forward_ios_rounded,
              color: ColorsConst.textColor, weight: h1, size: h2_5)
        ],
      ),
    );
  }

  Widget buildPodcastContainer() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailsScreen()));
      },
      child: Container(
        margin: EdgeInsets.only(left: w5, right: w5, bottom: w6),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(Images.podcast1, height: h14)),
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
                        color: ColorsConst.textColor.withOpacity(0.7)),
                  ),
                  SizedBox(height: h1),
                  Row(
                    children: [
                      const BuildButton(),
                      SizedBox(width: w3),
                      Image.asset(Images.download, height: h3),
                      SizedBox(width: w3),
                      Image.asset(Images.folder, height: h3),
                      SizedBox(width: w3),
                      Image.asset(Images.more, height: h3),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
