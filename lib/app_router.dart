import 'package:flutter/material.dart';
import 'package:orthodontic_patient_tracker/Screens/Login.dart';
import 'package:orthodontic_patient_tracker/Screens/appointment.dart';
import 'package:orthodontic_patient_tracker/Screens/diary.dart';
import 'package:orthodontic_patient_tracker/Screens/timer.dart';

import 'Screens/home.dart';
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
