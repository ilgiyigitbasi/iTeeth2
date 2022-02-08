import 'package:flutter/material.dart';
import 'package:iTeeth/Screens/Login.dart';

import 'app_router.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: login_view_route,
    );
  }
}

