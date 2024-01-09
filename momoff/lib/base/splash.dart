import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/base/onboarding_screen.dart';

import '../api/secure.dart';
import '../main.dart';
import '../pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    myToken(context);
    super.initState();
  }

  Future<void> myToken(context) async {
    token = await UserSecureStorage.getTokenAuth();
    //final auth = Provider.of<AuthProvider>(context, listen: false);
    Timer(
        const Duration(
          milliseconds: 500,
          seconds: 3,
        ), () async {
          if (token != null) {
            Get.to(() => const Home(),
                transition: Transition.zoom,
                duration: const Duration(seconds: 1));
          }else{
              Get.to(() => const OnboardingScreen(),
                transition: Transition.zoom,
                duration: const Duration(seconds: 1));
            //Navigator.pushReplacementNamed(context, const OnboardingScreen() as String);
          }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const  Color(0xfffbfbfb),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(80)),
                child:  Image.asset(
                  'assets/logo0.jpeg', // 'assets/logo.png',
                  alignment: Alignment.center,
                  filterQuality: FilterQuality.high,
                  height: MediaQuery.of(context).size.height /4,
                  fit: BoxFit.cover,
                ),
              )
            ),
            const Spacer(),
            const SizedBox(height: 20,)
          ],
        )
    );
  }
}
