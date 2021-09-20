import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:mr_english/providers/freeVideos.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FreeVideoScreen extends StatefulWidget {
  final height;
  FreeVideoScreen(this.height);
  static const String routeName = '/free-video';

  @override
  _FreeVideoScreenState createState() => _FreeVideoScreenState(height);
}

class _FreeVideoScreenState extends State<FreeVideoScreen> {
  final height;

  _FreeVideoScreenState(this.height);
  var _isInit = true;
  var _isLoading = false;
  String videoId = 'zwXm0splfaA';

  @override
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<FreeVideos>(context, listen: false)
          .fetchAndSetVideos()
          .then((_) {
        setState(() {
          _isLoading = false;
        });
      });

      _isInit = false;
    }

    super.didChangeDependencies();
  }

  Future<void> _refreshCourses(BuildContext context, String nICNo) async {
    await Provider.of<FreeVideos>(context, listen: false).fetchAndSetVideos();
  }

  @override
  Widget build(BuildContext context) {
    final playList = Provider.of<FreeVideos>(context, listen: false).playList;
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    print(videoId);

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        forceHD: false,
      ),
    );

    // Widget _playView(BuildContext context) {
    //   final controller = _controller;
    //   if (controller != null && controller.value.initialized) {
    //     return AspectRatio(
    //       aspectRatio: 16 / 9,
    //       child: VideoPlayer(controller),
    //     );
    //   } else {
    //     return AspectRatio(
    //       aspectRatio: 16 / 9,
    //       child: Center(child: Text('Please wait')),
    //     );
    //   }
    // }

    // _onTapVideo(url) {
    //   print(url);
    //   final controller = VideoPlayerController.network(url);
    //   _controller = controller;
    //   setState(() {});
    //   controller
    //     ..initialize().then((value) {
    //       controller.play();
    //       setState(() {});
    //     });
    // }

    print(videoId);
    return Scaffold(
      body: _isLoading
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'මඳ වේලාවක් රැදී සිටින්න.',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportionateScreenWidth(15),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenWidth(15)),
                  CircularProgressIndicator(),
                ],
              ),
            )
          : Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Container(
                    height: height * 0.3,
                    child: Card(
                      child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                          YoutubePlayer(
                            width: height * 0.3 * 16 / 9,
                            controller: _controller,
                            bottomActions: [
                              CurrentPosition(),
                              ProgressBar(isExpanded: true),
                              PlayPauseButton(),

                              // FullScreenButton(),
                            ],
                            showVideoProgressIndicator: true,
                            progressIndicatorColor: Colors.redAccent,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.7,
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: height * 0.7,
                        child: ListView.builder(
                          itemCount: playList.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) => Container(
                            margin: EdgeInsets.all(2),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenWidth(15)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        getProportionateScreenWidth(10)),
                                    child: Text(
                                      playList[index]['name'],
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            getProportionateScreenWidth(15),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(125),
                                    child: ListView.builder(
                                      itemCount:
                                          playList[index]['videoList'].length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index1) =>
                                          GestureDetector(
                                        onTap: () {
                                          _controller.load(playList[index]
                                                  ['videoList'][index1]
                                              ['videoURL']);
                                        },
                                        child: Container(
                                          margin: EdgeInsets.all(2),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getProportionateScreenWidth(
                                                    10)),
                                            child: Image.network(
                                              playList[index]['videoList']
                                                  [index1]['imageURL'],
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
    );
  }
}
