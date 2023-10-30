import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/pages/paiement.dart';

class ONG extends StatefulWidget {
  const ONG({super.key});

  @override
  State<ONG> createState() => _ONGState();
}

class _ONGState extends State<ONG> {
  final Color kDarkBlueColor = const Color(0xFFefc50d);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Color(0xFF044a6a),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.only(left: 18),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                'assets/info/yamou.jpg',
                alignment: Alignment.center,
                filterQuality: FilterQuality.high,
                height: MediaQuery.of(context).size.height /4,
                width: MediaQuery.of(context).size.width * 0.9,
                fit: BoxFit.cover,
              ),
            ),
            ),
            Container(
              height: 25,
              width: 50,
              padding: EdgeInsets.only(top: 5, left: 5),
              margin: EdgeInsets.only(left: 15, top: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF044a6a),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child:  Text("ONG",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(left: 15, bottom: 25, top: 15),
            child: Text(
              'Pro-kids Côte d\'Ivoire',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkBlueColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 15, bottom: 5, top: 0),
              child: Text(
                'PRESENTATION',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 15, right: 20),
            child:  Text("Est une association ivoirienne engagée dans le développement de la petite enfance à travers l'amélioration de l'environnement éducatif de l'enfant en situation de vulnérabilité. L'association travaille avec les enfants, les jeunes filles et les jeunes filles-mères.",
              maxLines: 10,
              overflow: TextOverflow.clip,
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 15, bottom: 5, top: 10),
              child: Text(
                'OBJECTIFS :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 15, bottom: 5, top: 10),
              child: Row(
                children: [
                  Icon(Icons.arrow_circle_down_rounded, color: Colors.black,),
                  Text("  Scolariser ", style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),),
                  Text(" 250 ", style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),),
                  Text(" Enfants", style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),),
                ],
              )
            ),
            Padding(padding: EdgeInsets.only(left: 15, bottom: 5, top: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_circle_down_rounded, color: Colors.black,),
                    Text("  Former ", style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),),
                    Text(" 150 ", style: TextStyle(
                      color: kDarkBlueColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),),
                   const Text(" Jeunes meres dans le metier\n de la couture.", maxLines: 3,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                )
            ),
           Padding(padding: const EdgeInsets.only(left: 15, top: 15),
           child:  ElevatedButton(
               onPressed: (){
                 Get.to(() => const Payment(), transition: Transition.cupertino,
                     duration: const Duration(seconds: 2));
               },
               style: ElevatedButton.styleFrom(
                 backgroundColor: kDarkBlueColor,
                 elevation: 5,
                 fixedSize: const Size(200, 50),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                 ),
               ),
               child: const Text("Soutenir Pro-kids")),
           ),
            Padding(padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child:  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF044a6a),
                    elevation: 5,
                    fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                  ),
                  ),
                  child: const Text("Voir l'impact")),
            )
          ],
        ),
      ),
    );
  }
}
