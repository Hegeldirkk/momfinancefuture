import 'package:flutter/material.dart'
;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child:  Align(
                    alignment: Alignment.center,
                    child:  Text("Sign up",
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
              child:  Text("Kindly enter your details",
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
                      Icons.person_2_outlined,
                      color: Colors.grey,
                    ),
                    //prefixText: '+225',
                    border: InputBorder.none,
                    labelText: "Name",
                  ),
                  keyboardType: TextInputType.name,
                  onChanged: (value) {

                  },
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
                    labelText: "Password",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
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
                    labelText: "Confirm Password",
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              const SizedBox(height: 10,),
              /* AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:*/InkWell(
                onTap: (){ },
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
                  child:Text("Sign up",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,),)
                  ),
                ),

              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Get.to(() => const Login(), transition: Transition.leftToRight,
                      duration: const Duration(seconds: 2));
                },
                child: Text('Already have an account? Login',
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
