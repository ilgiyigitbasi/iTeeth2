import 'dart:async';

import 'package:flutter/material.dart';
import 'package:iTeeth/Screens/home.dart';
import 'package:iTeeth/Screens/Login.dart';
import 'package:iTeeth/Screens/appointment.dart';
import 'package:iTeeth/Screens/diary.dart';
import 'package:iTeeth/Screens/information_page.dart';
import 'package:iTeeth/Screens/timer.dart';

import 'constants.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      ///dashboard
      case login_view_route:
        return MaterialPageRoute(builder: (context) => const Login());
      case home_view:
        return MaterialPageRoute(builder: (context) => const Home());
      case appointment_view:
        return MaterialPageRoute(builder: (context) => const Appointments());
      case timer_view:
        return MaterialPageRoute(builder: (context) => const Timer());
      case diary_view:
        return MaterialPageRoute(builder: (context) => const Diary());
      case information_view:
        return MaterialPageRoute(builder: (context) => const InformationPage());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
