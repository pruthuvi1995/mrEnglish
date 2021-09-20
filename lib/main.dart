import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:mr_english/providers/classStudents.dart';
import 'package:mr_english/providers/freeVideos.dart';
import 'package:mr_english/screens/add_student_screen.dart';
import 'package:mr_english/screens/bank_details_screen.dart';
import 'package:mr_english/screens/free_video_screen.dart';
import 'package:mr_english/screens/logo_screen.dart';
import './screens/instructions_screen.dart';
import './screens/notification_screeen.dart';
import './screens/sample_essay_question_screen.dart';

import './screens/subscribe_screen.dart';
import './screens/unsubscribe_screen.dart';

import './screens/course_details_screen.dart';

import './providers/courses.dart';

import './providers/lessons.dart';
import './providers/papers.dart';
import './providers/years.dart';
import './screens/forgot_password_screen.dart';
import './screens/issue_certificate_screen.dart';

import './screens/paper_screen.dart';
import './screens/paper_video_screen.dart';
import './screens/payment_screen.dart';
import './screens/register_screen.dart';
import './screens/select_course_screen.dart';
import './screens/years_overview_screen.dart';

import './screens/sign_in_screen.dart';
import './screens/splash_screen.dart';
import 'providers/chapters.dart';
import 'providers/classes.dart';
import 'providers/seminars.dart';

import 'screens/before_trail_paper_screen.dart';
import 'screens/chapter_video_list_screen.dart';
import 'screens/class_video_screen.dart';
import 'screens/classes_screen.dart';
import 'screens/course01_details_screen.dart';
import 'screens/course_list_screen.dart';
import 'screens/presentation_skills_overview_screen.dart';
import 'screens/seminar_screen.dart';
import 'screens/seminar_video_screen.dart';
import 'screens/seminars_overview_screen.dart';
import 'theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/days_overview_screen.dart';
import './providers/days.dart';
import './providers/auth.dart';
import './screens/day_details_screen.dart';
import './screens/trail_paper_screen.dart';
import './screens/day_lesson_screen.dart';
import './screens/about_us_screen.dart';
import 'screens/syllabus_screen.dart';
import './screens/day_lesson_question_screen.dart';
import './screens/profile_screen.dart';
import 'package:flutter/services.dart';

// import './screens/auth_screen.dart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          ),
          ChangeNotifierProxyProvider<Auth, Days>(
            create: (ctx) => Days('', '', []),
            update: (ctx, auth, previousDays) => Days(auth.token, auth.userId,
                previousDays == null ? [] : previousDays.items),
          ),
          ChangeNotifierProxyProvider<Auth, Years>(
            create: (ctx) => Years('', '', []),
            update: (ctx, auth, previousYears) => Years(auth.token, auth.userId,
                previousYears == null ? [] : previousYears.items),
          ),
          ChangeNotifierProxyProvider<Auth, Seminars>(
            create: (ctx) => Seminars('', '', []),
            update: (ctx, auth, previousSeminars) => Seminars(
                auth.token,
                auth.userId,
                previousSeminars == null ? [] : previousSeminars.items),
          ),
          ChangeNotifierProxyProvider<Auth, ClassStudents>(
            create: (ctx) => ClassStudents('', '', [], ''),
            update: (ctx, auth, previousClassStudents) => ClassStudents(
                auth.token,
                auth.userId,
                previousClassStudents == null
                    ? []
                    : previousClassStudents.items,
                auth.nicNo),
          ),
          ChangeNotifierProxyProvider<Auth, Classes>(
            create: (ctx) => Classes('', '', []),
            update: (ctx, auth, previousClasses) => Classes(
                auth.token,
                auth.userId,
                previousClasses == null ? [] : previousClasses.items),
          ),
          ChangeNotifierProxyProvider<Auth, Lessons>(
            create: (ctx) => Lessons('', []),
            update: (ctx, auth, previousLessons) => Lessons(auth.token,
                previousLessons == null ? [] : previousLessons.items),
          ),
          ChangeNotifierProxyProvider<Auth, Papers>(
            create: (ctx) => Papers('', []),
            update: (ctx, auth, previousPapers) => Papers(
                auth.token, previousPapers == null ? [] : previousPapers.items),
          ),
          ChangeNotifierProxyProvider<Auth, Courses>(
            create: (ctx) => Courses('', []),
            update: (ctx, auth, previousCourses) => Courses(auth.token,
                previousCourses == null ? [] : previousCourses.items),
          ),
          ChangeNotifierProxyProvider<Auth, Chapters>(
            create: (ctx) => Chapters('', '', []),
            update: (ctx, auth, previousChapters) => Chapters(
                auth.token,
                auth.userId,
                previousChapters == null ? [] : previousChapters.items),
          ),
          ChangeNotifierProxyProvider<Auth, FreeVideos>(
            create: (ctx) => FreeVideos(''),
            update: (ctx, auth, previousFreeVideos) => FreeVideos(auth.token),
          ),
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: 'Mr English',
            theme: theme(),
            // home: CourseDetailsScreen(),
            home: auth.isAuth
                ? CourseListScreen()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, authResultSnapshot) =>
                        authResultSnapshot.connectionState ==
                                ConnectionState.waiting
                            ? LogoScreen()
                            : SignInScreen(),
                  ),

            routes: {
              CourseDetailsScreen.routeName: (ctx) => CourseDetailsScreen(),
              Course01DetailsScreen.routeName: (ctx) => Course01DetailsScreen(),
              DaysOverviewScreen.routeName: (ctx) => DaysOverviewScreen(),
              YearsOverviewScreen.routeName: (ctx) => YearsOverviewScreen(),
              SeminarsOverviewScreen.routeName: (ctx) =>
                  SeminarsOverviewScreen(),
              PresentationSkillsOverviewScreen.routeName: (ctx) =>
                  PresentationSkillsOverviewScreen(),
              DayDetailsScreen.routeName: (ctx) => DayDetailsScreen(),
              TrailPaperScreen.routeName: (ctx) => TrailPaperScreen(),
              DayLessonScreen.routeName: (ctx) => DayLessonScreen(),
              DayLessonQuestionScreen.routeName: (ctx) =>
                  DayLessonQuestionScreen(),
              AboutUsScreen.routeName: (ctx) => AboutUsScreen(),
              SyllabusScreen.routeName: (ctx) => SyllabusScreen(),
              ProfileScreen.routeName: (ctx) => ProfileScreen(),
              SplashScreen.routeName: (ctx) => SplashScreen(),
              SignInScreen.routeName: (ctx) => SignInScreen(),
              RegisterScreen.routeName: (ctx) => RegisterScreen(),
              ForgotPasswordScreen.routeName: (ctx) => ForgotPasswordScreen(),
              SelectCourseScreen.routeName: (ctx) => SelectCourseScreen(),
              PaymentScreen.routeName: (ctx) => PaymentScreen(),
              PaperScreen.routeName: (ctx) => PaperScreen(),
              ChapterVideoListScreen.routeName: (ctx) =>
                  ChapterVideoListScreen(),
              SeminarScreen.routeName: (ctx) => SeminarScreen(),
              // ClassesScreen.routeName: (ctx) => ClassesScreen(),
              PaperVideoScreen.routeName: (ctx) => PaperVideoScreen(),
              SeminarVideoScreen.routeName: (ctx) => SeminarVideoScreen(),
              ClassVideoScreen.routeName: (ctx) => ClassVideoScreen(),
              SubscribeScreen.routeName: (ctx) => SubscribeScreen(),
              UnsubscribeScreen.routeName: (ctx) => UnsubscribeScreen(),
              IssueCertificateScreen.routeName: (ctx) =>
                  IssueCertificateScreen(),
              InstructionsScreen.routeName: (ctx) => InstructionsScreen(),
              BeforeTrailPaperScreen.routeName: (ctx) =>
                  BeforeTrailPaperScreen(),
              NotificationScreen.routeName: (ctx) => NotificationScreen(),
              SampleEssayQuestionScreen.routeName: (ctx) =>
                  SampleEssayQuestionScreen(),
              AddStudentScreen.routeName: (ctx) => AddStudentScreen(),
              BankDetailsScreen.routeName: (ctx) => BankDetailsScreen(),
              // FreeVideoScreen.routeName: (ctx) => FreeVideoScreen(),
            },
          ),
        ));
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}
