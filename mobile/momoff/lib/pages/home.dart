import 'package:flutter/material.dart';
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
           SizedBox(height: 60,),
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   children: [
                     Padding(padding: EdgeInsets.only(left: 0),
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
                     Padding(padding: EdgeInsets.only(left: 18),
                       child:Text(
                       '${authService.inputNomController.text} 👋',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: kDarkBlueColor,
                         fontSize: 15.0,
                         fontWeight: FontWeight.w600,
                       ),
                     ),
                     )
                   ],
                 ),
                 Padding(padding: EdgeInsets.only(right: 25),
                 child: Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(border: Border.all(color: kDarkBlueColor, width: 3),
                   borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child: Icon(Icons.person, size: 40,),
                 ))


               ],
             ),
           ),
           SizedBox(height: 20,),
           Container(
             margin: EdgeInsets.fromLTRB(width * 0.05, height * 0.009, width * 0.05, 0),
             decoration: BoxDecoration(
               color: Color(0XFFbee0ec),
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
           SizedBox(height: 20,),
           ClipRRect(
             borderRadius: BorderRadius.all(Radius.circular(20)),
             child: Image.asset(
               'assets/info/Mask_group.png',
               alignment: Alignment.center,
               filterQuality: FilterQuality.high,
               height: MediaQuery.of(context).size.height /5,
               fit: BoxFit.cover,
             ),
           ),
           SizedBox(height: 20,),
           Padding(padding: EdgeInsets.only(right: 150),
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
           SizedBox(height: 20,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Row(
               children: [
                 Container(
                   height: 60,
                   width: 200,
                   decoration: BoxDecoration(
                       color: kDarkBlueColor,
                       borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child: Center(
                     child: Text("ONG"),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 60,
                   width: 200,
                   decoration: BoxDecoration(
                       color: Color(0XFFbee0ec),
                       borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child: Center(
                     child: Text("Micro-entrepreneurship"),
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 60,
                   width: 200,
                   decoration: BoxDecoration(
                       color: Color(0XFFbee0ec),
                       borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                   child:Center(
                     child: Text("Hobbies"),
                   ),
                 )
               ],
             )
           ),
           SizedBox(height: 30,),
           Padding(padding: EdgeInsets.only(left: 20, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 children: [
                   ClipRRect(
                     borderRadius: BorderRadius.all(Radius.circular(20)),
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
                   SizedBox(height: 5,),
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
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         color: kDarkBlueColor,
                       ),
                       child: Center(
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
                     borderRadius: BorderRadius.all(Radius.circular(20)),
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
                   SizedBox(height: 5,),
                   InkWell(
                     child:
                     Container(
                       height: 20,
                       width: 90,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         color: kDarkBlueColor,
                       ),
                       child: Center(
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
