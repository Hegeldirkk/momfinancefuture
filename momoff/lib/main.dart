import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'api/user.dart';
import 'base/onboard.dart';
import 'base/onboarding_screen.dart';
import 'base/splash.dart';

void main() => runApp(const GetMaterialApp(
  home: MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

User user = User();
String? token;


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FINANCEFUTURE',
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          primaryColor: Colors.white,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white
      ),
      home: const Splash(),
     /* routes: {
        OnBoard.id: (context) => const OnBoard()
      },*/
    );
  }
}