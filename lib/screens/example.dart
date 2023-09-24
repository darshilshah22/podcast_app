import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:podcast_app/constants/images.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen>
    with TickerProviderStateMixin {
  AnimationController? _animationIconController1;
  AudioCache? audioCache;
  AudioPlayer? audioPlayer;
  final Duration _duration = const Duration();
  Duration position = const Duration();
  final Duration _slider = const Duration(seconds: 0);
  double? durationvalue;
  bool issongplaying = false;

  @override
  void initState() {
    position = _slider;
    _animationIconController1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
      reverseDuration: const Duration(milliseconds: 750),
    );
    audioPlayer = AudioPlayer();
    // audioCache = AudioCache(fixedPlayer: audioPlayer);
    // audioPlayer.durationHandler = (d) => setState(() {
    //       _duration = d;
    //     });

    // audioPlayer.positionHandler = (p) => setState(() {
    //       _position = p;
    //     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100.withOpacity(0.55),
          image: DecorationImage(
            image: AssetImage(Images.category1),
            fit: BoxFit.fill,
          ),
        ),
        child: Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipOval(
                      child: Image(
                        image: const AssetImage("assets/images/color1.jpg"),
                        width: (MediaQuery.of(context).size.width) - 200,
                        height: (MediaQuery.of(context).size.width) - 200,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Slider(
                      activeColor: Colors.white,
                      inactiveColor: Colors.grey,
                      value: position.inSeconds.toDouble(),
                      max: _duration.inSeconds.toDouble(),
                      onChanged: (double value) {
                        // Add code to track the music duration.
                        audioPlayer!.seek(position);
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.navigate_before,
                          size: 55,
                          color: Colors.white,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Add code to pause and play the music.
                          },
                          child: ClipOval(
                            child: Container(
                              color: Colors.pink[600],
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AnimatedIcon(
                                  icon: AnimatedIcons.play_pause,
                                  size: 55,
                                  progress: _animationIconController1!,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.navigate_next,
                          size: 55,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
