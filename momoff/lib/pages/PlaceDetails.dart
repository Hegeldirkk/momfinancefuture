import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import '../Models/Datamodel/PlaceModel.dart';
import '../journal/details_page.dart';
import '../journal/journal.dart';
import '../Models/constants.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'assets/img.png',
    price: '250.00',
    photographer: 'Responsable Pro kid CI ',
    title: '250 ENFANTS SCOLARISES',
    details:
        'Votre don a bénéficié à 250 enfants vulnérables, y compris des jeunes filles et des jeunes mères, en améliorant leur environnement éducatif.',
  ),
  ImageDetails(
    imagePath: 'images/2.jpg',
    price: '\$10.00',
    photographer: 'Abraham Costa',
    title: 'Spring',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/3.jpg',
    price: '\$30.00',
    photographer: 'Jamie Bryan',
    title: 'Casual Look',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/4.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/5.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/6.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/7.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/8.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/9.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/10.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/11.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/12.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/13.jpg',
    price: '\$20.00',
    photographer: 'Jamie Bryan',
    title: 'New York',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/14.jpg',
    price: '\$20.00',
    photographer: 'Matthew',
    title: 'Cone Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/15.jpg',
    price: '\$25.00',
    photographer: 'Martin Sawyer',
    title: 'Pink Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
  ImageDetails(
    imagePath: 'images/16.jpg',
    price: '\$15.00',
    photographer: 'John Doe',
    title: 'Strawberry Ice Cream',
    details:
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil error aspernatur, sequi inventore eligendi vitae dolorem animi suscipit. Nobis, cumque.',
  ),
];

class PlaceDetails extends StatelessWidget {
  final PlaceModel placeModel;
  PlaceDetails({required this.placeModel});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 25, top: 15),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: placeModel.title,
                   
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image(
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                
                      height: MediaQuery.of(context).size.height /4,
                      width: MediaQuery.of(context).size.width * 0.9,
               
                      fit: BoxFit.cover,
                      image: AssetImage(placeModel.imagePath),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        placeModel.title,
                        style: textTheme.headlineMedium!.apply(
                          color: Colors.black,
                        ),
                      ),
                    ),
                   /* Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "${placeModel.rent}",
                              style: textTheme.headlineSmall,
                            ),
                            Text(
                              "/ 20 000",
                              style: textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ),*/
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF044a6a),//Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           /* Icon(
                              FlutterIcons.bed_faw,
                              size: 16,
                            ),*/
                            Text("ONG",
                            style: TextStyle(
                              color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFF044a6a),//Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           /* Icon(
                              FlutterIcons.bath_faw,
                              size: 16,
                            ),*/
                            Text("EDUCATION",
                            style: TextStyle(
                              color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: const Color(0xFF044a6a),//Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            /*Icon(
                              FlutterIcons.fridge_outline_mco
                              size: 16,
                            ),*/
                            Text("FORMATION",
                            style: TextStyle(
                              color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 12,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: const Image(
                            width: 65,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/face.jpg'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Utilisateur",
                              style: textTheme.bodySmall,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Ghavi seraphin",
                              style: textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Container(
                          decoration: BoxDecoration(
                          //  color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(12.0),
                           /* child: Icon(
                              FlutterIcons.comment_dots_faw5s,
                              color: Colors.white,
                            ),*/
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Pro-kids Côte d\'Ivoire",
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  "Chers donateurs extraordinaires,Un immense merci du fond du cœur pour votre incroyable générosité. Vos dons ont apporté lumière et espoir dans ma vie. Les photos ci-dessous témoignent de l'impact concret de votre soutien. Merci de tout cœur pour votre bienveillance et votre contribution précieuse. Avec gratitude.",
                  style: textTheme.titleMedium!.apply(
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  " Journal ",
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                /////////////////////////
                
            
                ////////////////////////
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: placeModel.photoCollections.length,
                    itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                //imagePath: placeModel.photoCollections[index],
                 imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              photographer: _images[index].photographer,
                              price: _images[index].price,
                              details: _images[index].details,
                              index: index,
                // Other details you want to pass to DetailsPage
              ),
            ),
          );
          
        },
                       child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image(
                            height: 220,
                            width: 120,
                            fit: BoxFit.cover,
                            image:
                                AssetImage(placeModel.photoCollections[index]),
                          ),
                        ),
                      ),
                                           );
                    },
                  ),
                ),


                const SizedBox(
                  height: 10,//40
                ),
                ],
            ),
            
 
)
          ),
        ),
      );
  
  }
}

