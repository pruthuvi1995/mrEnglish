import 'package:mr_english/screens/sample_essay_question_screen.dart';

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
    print(dayId);
    final loadedLesson =
        Provider.of<Lessons>(context, listen: false).findByID(dayId[1]);
    Widget dayLesson = DayLessonText(loadedLesson.lesson);
    final int dayNo = dayId[4];
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
            height: height * .4,
            child: Card(
              child: Column(children: <Widget>[
                // Text(
                //   loadedLesson.title,
                //   style: TextStyle(
                //     fontSize: getProportionateScreenHeight(25),
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
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
            height: height * .5,
            child: dayLesson,
          ),
          Container(
            height: height * .1,
            child: GestureDetector(
              onTap: () {
                if (dayNo <= 40 && dayNo >= 35) {
                  Navigator.of(context).pushReplacementNamed(
                    SampleEssayQuestionScreen.routeName,
                    arguments: dayId,
                  );
                } else {
                  Navigator.of(context).pushReplacementNamed(
                    DayLessonQuestionScreen.routeName,
                    arguments: dayId,
                  );
                }
              },
              child: Container(
                margin: EdgeInsets.all(getProportionateScreenHeight(10)),
                padding: EdgeInsets.all(getProportionateScreenHeight(10)),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(getProportionateScreenHeight(15)),
                  color: kPrimaryColor,
                ),
                width: double.infinity,
                child: Text(
                  'පාඩම බලා අවසන්. paper 1 ලබා දෙන්න.',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
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
