import 'package:flutter/material.dart'
;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth_service.dart';
import 'login.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthService authService = Get.put(AuthService());
  bool hidePwd = true;
  bool hidePwd2 = true;
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
              SizedBox(height: 60,),
              Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child:  Image.asset(
                      'assets/logo0.jpeg',//logo.png
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                      height: MediaQuery.of(context).size.height /9,// /5
                      fit: BoxFit.fill,
                    ),
                  )
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child:  Align(
                    alignment: Alignment.center,
                    child:  Text("S'inscrire",
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
              const SizedBox(height: 35,),
              /*Padding(padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Align(
              alignment: Alignment.centerLeft,
              child:  Text("Veuillez entrer vos coordonnées",
                textAlign: TextAlign.left,
                maxLines: 2,
                style: GoogleFonts.montserrat(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500
                ),
              ),)
              ),*/
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey,
                    ),
                    //prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "   Nom et Prenoms",
                  ),
                  keyboardType: TextInputType.name,
                  onChanged: (value) {

                  },
                  controller: authService.inputNomController,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
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
                    labelText: "   Email",
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
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  obscureText: hidePwd,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
                          elevation: MaterialStateProperty.all<double?>(0),
                        ),
                        onPressed: ()=> setState((){
                          if (hidePwd)
                            hidePwd = false;
                          else
                            hidePwd = true;
                        }), icon: Icon(hidePwd ? Icons.lock_outline : Icons.lock_open_sharp, color: hidePwd ? Colors.grey : const Color(0xFFefc50d),), label: SizedBox()),
                    // prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "Mot de passe",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                  },
                  controller: authService.inputPwdController,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration:  InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
                          elevation: MaterialStateProperty.all<double?>(0),
                        ),
                        onPressed: ()=> setState((){
                          if (hidePwd2)
                            hidePwd2 = false;
                          else
                            hidePwd2 = true;
                        }), icon: Icon(hidePwd2 ? Icons.lock_outline : Icons.lock_open_sharp, color: hidePwd2 ? Colors.grey : const Color(0xFFefc50d),), label: SizedBox()),
                    // prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "Confirmer le mot de passe",
                  ),
                  obscureText: hidePwd2,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                  },
                  controller: authService.inputConfPwdController,
                ),
              ),
              const SizedBox(height: 10,),
              AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:InkWell(
                onTap: (){
                  //authService.statusChange();
                  //print(authService.inputConfPwdController.value);
                  //print(authService.inputEmailController.value);
                  //authService.statusChange();
                  /*Get.snackbar(
                      'Inscription',
                      'Vous êtes inscrit avec succes! (vu que notre serveur n\'est pas en production, l’inscription rest une simulation.)',
                      snackPosition: SnackPosition.TOP, backgroundColor: Colors.lightGreen, colorText: Colors.white);
                  Get.to(() => Login(), transition: Transition.leftToRightWithFade, duration: const Duration(seconds: 1));*/
                  authService.createUserWithEmailAndPassword(authService.inputNomController.text, authService.inputEmailController.text, authService.inputPwdController.text ,authService.inputConfPwdController.text);
                },
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 1.3,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFFefc50d),
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Obx(() {
                    return authService.load.value
                        ? CircularProgressIndicator(color: Colors.white,)
                        : Text("S\'inscrire",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,),);
                      }))
                )),

              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Get.to(() => Login(), transition: Transition.leftToRight,
                      duration: const Duration(seconds: 2));
                },
                child: const Text('Vous avez déjà un compte? Se connecter',
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
