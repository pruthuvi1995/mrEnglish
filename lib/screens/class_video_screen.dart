import '../size_config.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ClassVideoScreen extends StatelessWidget {
  static const String routeName = '/class-video';

  @override
  Widget build(BuildContext context) {
    final videoId = ModalRoute.of(context).settings.arguments as List;
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId[1],
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(videoId[0]),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                // height: getProportionateScreenHeight(250),
                child: Card(
                  child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                      YoutubePlayer(
                        controller: _controller,
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
            ]),
      ),
    );
  }
}
