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

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
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
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            title: 'Mr English',
            theme: theme(),
            // home: CourseDetailsScreen(),
            home: auth.isAuth
                ? CourseDetailsScreen()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, authResultSnapshot) =>
                        authResultSnapshot.connectionState ==
                                ConnectionState.waiting
                            ? SplashScreen()
                            : SignInScreen(),
                  ),

            routes: {
              DaysOverviewScreen.routeName: (ctx) => DaysOverviewScreen(),
              YearsOverviewScreen.routeName: (ctx) => YearsOverviewScreen(),
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
              PaperVideoScreen.routeName: (ctx) => PaperVideoScreen(),
              SubscribeScreen.routeName: (ctx) => SubscribeScreen(),
              UnsubscribeScreen.routeName: (ctx) => UnsubscribeScreen(),
              IssueCertificateScreen.routeName: (ctx) =>
                  IssueCertificateScreen(),
            },
          ),
        ));
  }
}
