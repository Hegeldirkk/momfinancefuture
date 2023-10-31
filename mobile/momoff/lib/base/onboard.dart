import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/login.dart';
import '../auth/signup.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);
  static const String id="onboard";

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  final Color kDarkBlueColor = const Color(0xFFefc50d);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: OnBoardingSlider(
        finishButtonTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 17
        ),
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Faire un don',
        onFinish: () {
          Get.to(const ChxIns());
        },
        finishButtonStyle: const FinishButtonStyle(
          backgroundColor: Color(0xFF044a6a),
        ),
        skipTextButton: Text('Sauter',
          style: TextStyle(
            fontSize: 16,
            color: kDarkBlueColor,
            fontWeight: FontWeight.w900,
          ),),
        trailing: Text('Se Connecter', style: TextStyle(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w900,
        ),),
        centerBackground: true,
        controllerColor: kDarkBlueColor,
        background: [
          Image.asset('assets/info/donation.png',
            alignment: Alignment.center,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height /2,
            fit: BoxFit.cover,
          ),
          Image.asset('assets/info/appmomoff.png',
            alignment: Alignment.center,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height /2,
            fit: BoxFit.contain,
          ),
          Image.asset('assets/info/fluid.png',
            alignment: Alignment.center,
            filterQuality: FilterQuality.high,
            height: MediaQuery.of(context).size.height /2,
            fit: BoxFit.contain,
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 420,
                ),
                Text(
                  'FAIRE UN DON',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Des organisations pretes a recevoir vos dons',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 420,
                ),
                Text(
                  'DONATEUR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Une application élaborée pour faciliter vos dons !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 420,
                ),
                Text(
                  'FLUIDE & SECURISE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Pour une meilleure experience et pour plus de confidentialité tous vos dons sont sécurisé',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChxIns extends StatelessWidget {
  const ChxIns({super.key});
  final Color secondColor = const Color(0xFF044a6a);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0X0aaa9d5),
              ),
              child: Column(
                children: [
                  Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
                        child:  Image.asset(
                          'assets/logo.jpeg',
                          alignment: Alignment.center,
                          filterQuality: FilterQuality.high,
                          height: MediaQuery.of(context).size.height /6,
                          fit: BoxFit.cover,
                        ),
                      )
                  ),

                ],
              ),
            ),

            Column(
              children: [
                Text("AKWABA",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.raleway(
                      fontSize:18,
                      color: Colors.black,
                      fontWeight: FontWeight.w800
                  ),
                ),

                Padding(padding: EdgeInsets.only(left: 18, right: 25),
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum h",
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  style: GoogleFonts.raleway(
                      fontSize:15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),
                ),
                )
              ],
            ),

            Container(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Get.to(() => const Register(), transition: Transition.leftToRight,
                          duration: const Duration(seconds: 2));
                    },
                    child: const Text('S\'INSCRIRE'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondColor,
                      elevation: 0,
                      fixedSize: Size(250, 50),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: secondColor,
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),

                  InkWell(
                    child: Text('je n\'ai pas de compte',
                      style: TextStyle(
                        color: secondColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),

                  ElevatedButton(
                      onPressed: (){
                        Get.to(()=> const Login(), transition: Transition.leftToRight,
                            duration: const Duration(seconds: 2));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  const Color(0xFFefc50d),
                        elevation: 0,
                        fixedSize: Size(250, 50),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 2,
                              color:  const Color(0xFFefc50d),
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),

                      ),
                      child: Text('SE CONNECTER',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                    child: Text('j\'ai déjà un compte',
                      style: TextStyle(
                        color: secondColor,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

