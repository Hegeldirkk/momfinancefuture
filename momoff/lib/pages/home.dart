import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import '../Models/Datamodel/PlaceModel.dart';
import '../Models/ViewModel/BestOffer.dart';
import '../Models/ViewModel/RecentAddedHome.dart';
import '../Models/constants.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/api/user.dart';

import '../Models/ViewModel/BestOffer.dart';
import '../Models/ViewModel/RecentAddedHome.dart';
import '../auth/auth_service.dart';
import '../main.dart';
import 'perso.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  
  AuthService authService = Get.put(AuthService());
  
  final Color kDarkBlueColor = const Color(0xFFefc50d);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            shrinkWrap: true,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color:const Color.fromARGB(255,239,197,13),
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(2, 3),
                          )
                        ],
                      ),
                      child:  const Icon(
                        Icons.menu,
                        color:Color.fromARGB(255, 255, 255, 255)                        //FlutterIcons.th_large_faw,
                        //color: kCustomBlackColor,
                      ),
                    ),

                    Padding(padding: const EdgeInsets.only(left: 0),
                     child: Text(
                       'Bienvenue ,',
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         color: kDarkBlueColor,
                         fontSize: 20.0,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     ),
                     Padding(padding: const EdgeInsets.only(left: 18),
                       child:Text(
                       '${authService.inputNomController.text} 👋',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: kDarkBlueColor,
                         fontSize: 15.0,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     ),



                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(-1, 5),
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: const Image(
                          fit: BoxFit.fill,
                          width: 55,
                          image: AssetImage('assets/images/face_bak.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(1, 2),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              //prefixIcon: Icon(FlutterIcons.magnify_mco),
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Recherche",
                              fillColor: const Color(0xffF3F4F8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    /*Flexible(
                      flex: 1,
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                         // color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Colors.black.withOpacity(0.4),
                              offset: const Offset(-5, 10),
                            )
                          ],
                        ),
                       /* child: const Icon(
                          Icons.menu_outlined
                          //FlutterIcons.sliders_h_faw5s,
                          //color: Colors.grey[300],
                        ),*/
                      ),
                    ),*/
                  ],
                ),
              ),
              //
              const SizedBox(height: 50),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special Noël ✨🎅",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Text(
                    "Voir tout",
                    style: TextStyle(
                         color: Colors.black54,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              BestOffer(
                placeModel: placeCollection[2],
              ),
              //
              const SizedBox(height: 40),
              //
               Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               
            Text(
             'Choisir une catégorie',
             style: Theme.of(context).textTheme.headlineSmall,
             textAlign: TextAlign.left,
             /*style: TextStyle(
               color: kDarkBlueColor,
               fontSize: 15.0,
               fontWeight: FontWeight.w600,
             ),*/
             
           ),
            const Text(
                    "Voir tout",
                    style: TextStyle(
                         color: Colors.black54,
                        ),
                  ),
                   ],
           ),
            
           const SizedBox(height: 10,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [

                 Container(
                   height: 40,
                   width: 180,
                   decoration: BoxDecoration(
                       color: kDarkBlueColor,
                       borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Center(
                     child: Text("Recement Ajouté"),
                     
                   ),
                 ),
                  const SizedBox(width: 10,),
                 Container(
                  height: 40,
                   width: 180,
                   // ignore: prefer_const_constructors
                   decoration: BoxDecoration(
                       color:  Colors.grey[300],//const Color.fromARGB(255, 178, 178, 178),
                       borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Center(
                     child: Text("ONG"),
                     
                   ),
                   
                 ),
                 const SizedBox(width: 10,),
                 Container(
                   height: 40,
                   width: 180,
                   decoration: BoxDecoration(
                       color: Colors.grey[300],//const Color.fromARGB(255, 178, 178, 178),
                       borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Center(
                     child: Text("Micro-entrepreneurship"),
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Container(
                   height: 40,
                   width: 180,
                   decoration:  BoxDecoration(
                       color:Colors.grey[300],//const Color.fromARGB(255, 178, 178, 178),
                       borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child:const Center(
                     child: Text("Education"),
                   ),
                 )
               ],
             )
           ),
              /////////////////////////
            
              const SizedBox(height: 30),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: [
                    RecentAdded(
                      placeModel: placeCollection[0],
                    ),
                    RecentAdded(
                      placeModel: placeCollection[1],
                    ),
                  ],
                ),
              ),
              //
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/api/user.dart';

import '../auth/auth_service.dart';
import '../main.dart';
import 'perso.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService authService = Get.put(AuthService());

  final Color kDarkBlueColor = const Color(0xFFefc50d);
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           const SizedBox(height: 60,),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   children: [
                     Padding(padding: const EdgeInsets.only(left: 0),
                     child: Text(
                       'Bonjour,',
                       textAlign: TextAlign.left,
                       style: TextStyle(
                         color: kDarkBlueColor,
                         fontSize: 15.0,
                         fontWeight: FontWeight.w400,
                       ),
                     ),
                     ),
                     Padding(padding: const EdgeInsets.only(left: 18),
                       child:Text(
                       '${authService.inputNomController.text} 👋',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: kDarkBlueColor,
                         fontSize: 15.0,
                         fontWeight: FontWeight.w600,
                       ),
                     +),
                     )
                   ],
                 ),
                 Padding(padding: const EdgeInsets.only(right: 25),
                 child: Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(border: Border.all(color: kDarkBlueColor, width: 3),
                   borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Icon(Icons.person, size: 40,),
                 ))


               ],
             ),
           ),
           const SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.fromLTRB(width * 0.05, height * 0.009, width * 0.05, 0),
             decoration: BoxDecoration(
               color: const Color(0XFFbee0ec),
               borderRadius: BorderRadius.circular(50),
             ),
             child: TextField(
               decoration: const InputDecoration(
                 fillColor: Colors.grey,
                 prefixIcon: Icon(
                   Icons.search,
                   color: Color(0xFF1e7898),
                 ),
                 //prefixText: '+225',
                 border: InputBorder.none,
                 hintText: "Rechercher",

               ),
               keyboardType: TextInputType.emailAddress,
               onChanged: (value) {

               },
             ),
           ),
           const SizedBox(height: 20,),
           ClipRRect(
             borderRadius: const BorderRadius.all(Radius.circular(20)),
             child: Image.asset(
               'assets/info/Mask_group.png',
               alignment: Alignment.center,
               filterQuality: FilterQuality.high,
               height: MediaQuery.of(context).size.height /5,
               fit: BoxFit.cover,
             ),
           ),
           const SizedBox(height: 20,),
           Padding(padding: const EdgeInsets.only(right: 150),
           child: Text(
             'Choisir une catégorie',
             textAlign: TextAlign.left,
             style: TextStyle(
               color: kDarkBlueColor,
               fontSize: 15.0,
               fontWeight: FontWeight.w600,
             ),
           ),
           ),
           const SizedBox(height: 20,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 Container(
                   height: 60,
                   width: 200,
                   decoration: BoxDecoration(
                       color: kDarkBlueColor,
                       borderRadius: const BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Center(
                     child: Text("ONG"),
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Container(
                   height: 60,
                   width: 200,
                   decoration: const BoxDecoration(
                       color: Color(0XFFbee0ec),
                       borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child: const Center(
                     child: Text("Micro-entrepreneurship"),
                   ),
                 ),
                 const SizedBox(width: 10,),
                 Container(
                   height: 60,
                   width: 200,
                   decoration: const BoxDecoration(
                       color: Color(0XFFbee0ec),
                       borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child:const Center(
                     child: Text("Hobbies"),
                   ),
                 )
               ],
             )
           ),
           const SizedBox(height: 30,),
           Padding(padding: const EdgeInsets.only(left: 20, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 children: [
                   ClipRRect(
                     borderRadius: const BorderRadius.all(Radius.circular(20)),
                     child: Image.asset(
                       'assets/info/yamou.jpg',
                       alignment: Alignment.center,
                       filterQuality: FilterQuality.high,
                       height: MediaQuery.of(context).size.height /6,
                       width: 150,
                       fit: BoxFit.cover,
                     ),
                   ),
                   Text(
                     'Pro-kids Côte d\'ivoire',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: kDarkBlueColor,
                       fontSize: 12.0,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                   const SizedBox(height: 5,),
                   InkWell(
                     onTap: (){
                       Get.to(() => const ONG(), transition: Transition.cupertino,
                           duration: const Duration(seconds: 2));
                     },
                     child:
                     Container(
                       height: 20,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(Radius.circular(20)),
                         color: kDarkBlueColor,
                       ),
                       child: const Center(
                         child: Text("Voir plus", style: TextStyle(
                           fontWeight: FontWeight.w500,
                         ),),
                       ),
                     ),
                   )
                 ],
               ),
               Column(
                 children: [
                   ClipRRect(
                     borderRadius: const BorderRadius.all(Radius.circular(20)),
                     child: Image.asset(
                       'assets/info/unesco.jpg',
                       alignment: Alignment.center,
                       filterQuality: FilterQuality.high,
                       height: MediaQuery.of(context).size.height /6,
                       width: 150,
                       fit: BoxFit.cover,
                     ),
                   ),
                   Text(
                     'Pro-kids Côte d\'ivoire',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: kDarkBlueColor,
                       fontSize: 12.0,
                       fontWeight: FontWeight.w600,
                     ),
                   ),
                   const SizedBox(height: 5,),
                   InkWell(
                     child:
                     Container(
                       height: 20,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: const BorderRadius.all(Radius.circular(20)),
                         color: kDarkBlueColor,
                       ),
                       child: const Center(
                         child: Text("Voir plus", style: TextStyle(
                           fontWeight: FontWeight.w500,
                         ),),
                       ),
                     ),
                   )
                 ],
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
*/