import '../constants.dart';
import '../providers/lessons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../size_config.dart';
import '../widgets/day_lesson_text.dart';
import './day_lesson_question_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DayLessonScreen extends StatelessWidget {
  static const String routeName = '/day-lesson';

  final appBar = AppBar(
    title: Text(
      'Day Lesson',
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenHeight(17),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final dayId = ModalRoute.of(context).settings.arguments as List;
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByID(dayId[1]);
    Widget dayLesson = DayLessonText(loadedLesson.lesson);

    final height = MediaQuery.of(context).size.height -
        appBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: loadedLesson.videoURL,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            // height: height * .4,
            child: Card(
              child: Column(children: <Widget>[
                Text(
                  loadedLesson.title,
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(25),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                YoutubePlayer(
                  controller: _controller,
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(isExpanded: true),
                    PlayPauseButton(),
                  ],
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.redAccent,
                ),
              ]),
            ),
          ),
          Container(
              height: getProportionateScreenHeight(310), child: dayLesson),
          Container(
            height: height * .1,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  DayLessonQuestionScreen.routeName,
                  arguments: dayId,
                );
              },
              child: Container(
                margin: EdgeInsets.all(height * .01),
                padding: EdgeInsets.all(height * .01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(height * .02),
                  color: kPrimaryColor,
                ),
                width: double.infinity,
                child: Text(
                  'Finished lesson',
                  style: TextStyle(
                    fontSize: height * .035,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
