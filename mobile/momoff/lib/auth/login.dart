import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home.dart';
import 'auth_service.dart';
import 'signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthService authService = Get.put(AuthService());

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70,),
              Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child:  Image.asset(
                      'assets/logo.jpeg',
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      height: MediaQuery.of(context).size.height /9,
                      fit: BoxFit.cover,
                    ),
                  )
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child:  Align(
                    alignment: Alignment.center,
                    child:  Text("Connectez-vous",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  )
              ),
              const SizedBox(height: 45,),
              Padding(padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:  Text("Content de vous revoir!",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500
                      ),
                    ),)),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey,
                    ),
                    //prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {

                  },
                  controller: authService.inputEmailController,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    // prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "Mot de passe",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: (value) {
                    print(value);
                  },
                  controller: authService.inputPwdController,
                ),
              ),
              const SizedBox(height: 10,),
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child:  Text("Mot de passe oublié ?",
                      textAlign: TextAlign.left,
                      maxLines: 2,
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500
                      ),
                    ),)),

              const SizedBox(height: 20,),
              /* AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:*/InkWell(
                onTap: (){
                  authService.statusChange();
                  Get.snackbar(
                      'Authentification',
                      '${authService.inputNomController.text} Vous êtes connecté avec succes!',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.lightGreen,
                      colorText: Colors.white);
                  Get.to(() => const Home(),
                      transition: Transition.circularReveal,
                      duration: const Duration(seconds: 1));
                  //authService.signUserWithEmailAndPassword(authService.inputEmailController.text, authService.inputPwdController.text);

                },
                child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 1.3,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFFefc50d),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child:Obx(() {
                      return authService.load.value
                          ? const CircularProgressIndicator(color: Colors.white,)
                          : Text("Se connecter",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,),);}),
                ),
              ),

              const SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Get.to(() => const Register(), transition: Transition.leftToRight,
                      duration: const Duration(seconds: 2));
                },
                child: const Text('Vous n\'avez pas de compte? S\'inscrire',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )

            ],
          ),
        )
    );
  }
}
