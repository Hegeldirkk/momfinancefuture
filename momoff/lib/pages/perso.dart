import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/pages/paiement.dart';

import '../journal/details_page.dart';
import '../journal/journal.dart';
import '../paiement/paiement.dart';

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
        foregroundColor: const Color(0xFF044a6a),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Padding(padding: const EdgeInsets.only(left: 18),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
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
              padding: const EdgeInsets.only(top: 8, left: 2),
              margin: const EdgeInsets.only(left: 15, top: 20),
              decoration: const BoxDecoration(
                  color: Color(0xFF044a6a),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child:  const Text("ONG",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white
                ),
              ),
            ),

            Padding(padding: const EdgeInsets.only(left: 15, bottom: 25, top: 15),
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
            Padding(padding: const EdgeInsets.only(left: 15, bottom: 5, top: 0),
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
            child:  Text("Nous sommes une association ivoirienne engagée dans le développement de la petite enfance à travers l’amélioration de l’environnement éducatif de l’enfant en situation de vulnérabilité. L’association travaille avec les enfants, les jeunes filles et les jeunes filles-mères....",
              maxLines: 10,
              overflow: TextOverflow.visible,
            ),         
            ),

             const SizedBox(height: 16),

             Row(
              children: [
                Expanded(
                  flex: 9,
                  child: LinearProgressIndicator(
                    value: 3000 / 10000,
                    backgroundColor: Colors.grey[300],
                    valueColor: const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 253, 204, 1),),
                  ),
                ),

                const SizedBox(width: 8),
                
                const Expanded(
                  flex: 1,
                  child: Text(
                    '20%',
                    style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 253, 204, 1),),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Titre "Fonds collectés"
            const Text(
              'Fonds Collectés: 2000 / 10000',
              style: TextStyle(fontSize: 18, color: Colors.grey,),textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),
            Padding(padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
              child: Text(
                'OBJECTIFS :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
              child: Row(
                children: [
                  const Icon(Icons.arrow_circle_down_rounded, color: Colors.black,),
                  const Text("  Scolariser ", style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    //fontWeight: FontWeight.w700,
                  ),),
                  Text(" 250 ", style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),),
                  const Text(" Enfants.", style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                   // fontWeight: FontWeight.w700,
                  ),),
                ],
              )
            ),

            
            Padding(padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
                child: Row(
                  children: [
                    const Icon(Icons.arrow_circle_down_rounded, color: Colors.black,),
                    const Text("  Former ", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      //fontWeight: FontWeight.w700,
                    ),),
                    Text("150 ", style: TextStyle(
                      color: kDarkBlueColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),),
                    const Text("Jeunes mères au metier de la couture.",
                     maxLines: 3,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      //fontWeight: FontWeight.w700,
                    ),),
                  ],
                )
            ),


            //
              Padding(padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
              child: Text(
                'PARTICIPANTS :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kDarkBlueColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ),
          //
         
              SizedBox(
              
              height: 70,
              
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 15, bottom: 5, top: 10),
                

                children: const [
                  CircleAvatar(
                    backgroundColor:Color.fromARGB(255, 253, 204, 1),
                    child: Text(
                      'A',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                 

                   SizedBox(width: 2),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 59, 47, 0),
                      child: Text(
                        'P',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 2),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 12, 122, 130),
                      child: Text(
                        'G',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                 
                ],
              ),
            ),
           
           
            //
           Padding(padding: const EdgeInsets.only(left: 15, top: 15),
           child:  ElevatedButton(
               onPressed: (){
                 Get.to(() =>  choice(), 
                  transition: Transition.cupertino,
                           duration: const Duration(seconds: 2)
                           );
                   
                 },
               style: ElevatedButton.styleFrom(
                 backgroundColor: kDarkBlueColor,
                 elevation: 5,
                 fixedSize: const Size(360, 50),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                 ),
               ),
               child: const Text("Soutenir Pro-kids")),
           ),
            Padding(padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child:  ElevatedButton(
                  onPressed: (){
                    
                   
                      Get.to(() =>  Suivie(), 
                     transition: Transition.cupertino,
                           duration: const Duration(seconds: 2)
                           );

                          /*  Get.to(() => const ONG(), transition: Transition.cupertino,
                           duration: const Duration(seconds: 2)
                           )*/
                  
                   

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF044a6a),
                    elevation: 5,
                    fixedSize: const Size(360, 50),
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
