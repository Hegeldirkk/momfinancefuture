import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:momoff/pages/paiement.dart';
import 'package:momoff/pages/perso.dart';
import '../../Models/Datamodel/PlaceModel.dart';
import '../../pages/PlaceDetails.dart';

import '../../pages/PlaceDetails.dart';
import '../Datamodel/PlaceModel.dart';

class RecentAdded extends StatelessWidget {
  final PlaceModel placeModel;
  RecentAdded({required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlaceDetails(placeModel: placeModel),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12,
        ),
        child: Container(
          height: 380,
          width: 300,
          decoration: BoxDecoration( 
            // color: Colors.blue,
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(3, 5),
              ),
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(-3, 0),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: placeModel.title,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(placeModel.imagePath),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GlassContainer(
                        height: 50,
                        blur: 5,
                        // shadowStrength: 10,
                        opacity: 0.5,
                        width: 180,
                        //this below code to remove border
                        border: const Border.fromBorderSide(BorderSide.none),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(
                            24,
                          ),
                          bottomRight: Radius.circular(
                            24,
                          ),
                        ),
                        child: Center(
                            child: RichText(
                          text: TextSpan(
                            text: " ${placeModel.rent.toString()} / ",
                            style: textTheme.titleLarge,
                            children: <TextSpan>[
                              TextSpan(
                                text: '20 000',
                                style: DefaultTextStyle.of(context).style,
                              ),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  placeModel.title,
                  style: textTheme.titleLarge!.apply(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                /*Text(
                  placeModel.details,
                  style: textTheme.bodyLarge!.apply(
                    color: Colors.black45,
                  ),
                ),*/
                /*const SizedBox(
                  height: 1,
                ),*/
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 25,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           /* Icon(
                              FlutterIcons.fridge_outline_mco,
                              size: 16,
                            ),*/
                            Text(
                              placeModel.details,
                              ),
                              
                               /*Text(
                                 placeModel.details,
                              //TypeModel.typeCollections[0],
                              ),*/
                          ],
                        ),
                      ),
                    ),
                     const SizedBox(
                                height: 8,
                              ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                         
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                               onPressed: () {
                                  //const Payment();
                                   Get.to(()=> const ONG(), transition: Transition.topLevel,
                            duration: const Duration(seconds: 2));
                               },
                            style: ElevatedButton.styleFrom(
           
                            backgroundColor: const Color.fromARGB(255,239,197,13), // Set the text color here
          ),
                            child:  const Text("Voir plus"),)
                            
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 35,
                        width: 90,
                        decoration: BoxDecoration(
                          color:  const Color(0xFF044a6a),//Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /*Icon(
                              FlutterIcons.bath_faw,
                              size: 16,
                            ),*/
                            Text(
                            "Suivre",
                            style: TextStyle(
                              color: Colors.white),),
                                            
                          ],
                        ),
                      ),
                    ),
                  
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
