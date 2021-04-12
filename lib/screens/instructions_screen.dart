import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InstructionsScreen extends StatelessWidget {
  static const String routeName = '/instructions';

  @override
  Widget build(BuildContext context) {
    // final videoId = ModalRoute.of(context).settings.arguments as List;
    YoutubePlayerController _controller1 = YoutubePlayerController(
      initialVideoId: 'OD5Vo7U_GP4',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller2 = YoutubePlayerController(
      initialVideoId: '7lknBCHMvPA',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller3 = YoutubePlayerController(
      initialVideoId: 'Sa_4Ruu8cUM',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller4 = YoutubePlayerController(
      initialVideoId: 'sEvTMwq9_i4',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    YoutubePlayerController _controller5 = YoutubePlayerController(
      initialVideoId: '4mMNb7_-PNQ',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instructions - උපදෙස් ',
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(17),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Text(
                'App 1 භාවිතා කිරීමට පෙර පහත උපදෙස් හොදින් බලන්න.',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(17),
                  color: Colors.black,
                ),
              ),
              Divider(),
              Text(
                'App 1 install කරගන්නේ කොහොමද?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controller1,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  PlayPauseButton(),
                  // FullScreenButton(),
                ],
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
              ),
              Divider(),
              Text(
                'App 1ට register වන්නේ කොහොමද?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controller2,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  PlayPauseButton(),
                  // FullScreenButton(),
                ],
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
              ),
              Divider(),
              Text(
                'App 1 subscribe කරන්නේ කොහොමද?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controller3,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  PlayPauseButton(),
                  // FullScreenButton(),
                ],
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
              ),
              Divider(),
              Text(
                'Past paper course 1 follow කරන්නේ කොහොමද?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controller4,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  PlayPauseButton(),
                  // FullScreenButton(),
                ],
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
              ),
              Divider(),
              Text(
                'Basic English course 1 follow කරන්නේ කොහොමද?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(15),
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              Divider(),
              YoutubePlayer(
                controller: _controller5,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  PlayPauseButton(),
                  // FullScreenButton(),
                ],
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.redAccent,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
