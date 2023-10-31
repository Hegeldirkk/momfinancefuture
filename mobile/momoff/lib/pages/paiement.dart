import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final Color kDarkBlueColor = const Color(0xFFefc50d);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: const Color(0xFF044a6a),
          centerTitle: true,
          title: const Text("Pro-kids Côte d'Ivoire", ),
          titleTextStyle: TextStyle(
            color: kDarkBlueColor,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height / 4,),

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
                      //prefixText: '+225',
                      border: InputBorder.none,
                      labelText: "Numéro MTN Mobile Money",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {

                    },
                  ),
                ),
                const SizedBox(height: 10,),
                const SizedBox(height: 20,),
                /* AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:*/InkWell(
                    onTap: (){
                      Get.to(() => const PaymentInfo(), transition: Transition.fade,
                          duration: const Duration(seconds: 2));
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
                      child: Text("Validez",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,)
                      ),)
                ),

              ],
            ),
          ),
        )
    );
  }
}

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key});

  final Color kDarkBlueColor = const Color(0xFFefc50d);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: const Color(0xFF044a6a),
          centerTitle: true,
          title: const Text("Confirmez le paiement", ),
          titleTextStyle: TextStyle(
            color: kDarkBlueColor,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height / 10,),

                Padding(padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:  Text("Nom du receveur",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w500
                        ),
                      ),)),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      //prefixText: '+225',
                      border: InputBorder.none,
                      hintText: "    Pro-kids Côte d'Ivoire",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {

                    },
                  ),
                ),

                const SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:  Text("Nom du donateur",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w500
                        ),
                      ),)),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      //prefixText: '+225',
                      border: InputBorder.none,
                      hintText: "    Ashfak Sayem",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {

                    },
                  ),
                ),

                const SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:  Text("Valeur du don",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w500
                        ),
                      ),)),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                  margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      //prefixText: '+225',
                      border: InputBorder.none,
                      hintText: "    10 000 Francs CFA",
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {

                    },
                  ),
                ),
                const SizedBox(height: 30,),
                /* AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:*/InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (_) => AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          SizedBox(height: 16,),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextField(
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                //prefixText: '+225',
                                border: InputBorder.none,
                                hintText: "    Code secret",
                              ),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {

                              },
                            ),
                          ),
                          SizedBox(height: 16,),
                          InkWell(
                              onTap: (){

                                Get.to(() => const Comments(), transition: Transition.fade,
                                    duration: const Duration(seconds: 2));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 42),
                                height: 55,
                                width: MediaQuery.of(context).size.width / 2,
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
                                child: Text("Confirmez",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,)
                                ),)
                          ),
                          SizedBox(height: 25,),
                        ],
                      ));

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
                      child: Text("Confirmez",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,)
                      ),)
                ),

              ],
            ),
          ),
        )
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({super.key});
  final Color kDarkBlueColor = const Color(0xFFefc50d);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: const Color(0xFF044a6a),
          centerTitle: true,
          title: const Text("Confirmez le paiement", ),
          titleTextStyle: TextStyle(
            color: kDarkBlueColor,
            fontSize: 17.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height / 10,),

                const SizedBox(height: 20,),
                Padding(padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:  Text("Message au receveur(optionnel)",
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: kDarkBlueColor,
                            fontWeight: FontWeight.w500
                        ),
                      ),)),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      //prefixText: '+225',
                      border: InputBorder.none,
                      hintText: "    Laissez un message",
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {

                    },
                  ),
                ),
                const SizedBox(height: 30,),
                /* AbsorbPointer(
                absorbing: authService.hideLogin.value,
                  child:*/InkWell(
                    onTap: (){
                      showDialog(context: context, builder: (_) => AlertDialog(
                        actionsAlignment: MainAxisAlignment.center,
                        actions: [
                          SizedBox(height: 16,),
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 3, 10, 3),
                            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.009, width * 0.1, 0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/info/check-transaction.gif',
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                            ),
                          ),
                          Text("Félicitation, votre paiement a été éffectué avec succes !",
                            textAlign: TextAlign.left,
                            maxLines: 2,
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 25,),
                        ],
                      ));
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
                      child: Text("Envoyer",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,)
                      ),)
                ),

              ],
            ),
          ),
        )
    );
  }
}


