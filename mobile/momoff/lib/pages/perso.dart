import 'package:flutter/material.dart';

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
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
            Container(
              height: 25,
              width: 200,
              padding: EdgeInsets.only(top: 5, left: 5),
              margin: EdgeInsets.only(left: 15, top: 20),
              decoration: BoxDecoration(
                  color: Color(0xFF044a6a),
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child:  Text("Micro-entrepreneurship",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(left: 15, bottom: 25, top: 20),
            child: Text(
              'Pro-kids Côte d\'ivoire',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkBlueColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ),
            const Padding(padding: EdgeInsets.only(left: 20, right: 20),
            child:  Text("Est une association ivoirienne engagée dans le développement de la petite enfance à travers l'amélioration de l'environnement éducatif de l'enfant en situation de vulnérabilité. L'association travaille avec les enfants, les jeunes filles et les jeunes filles-mères.",
              maxLines: 10,
              overflow: TextOverflow.clip,
            ),
            ),
           Padding(padding: EdgeInsets.only(left: 15, top: 15),
           child:  ElevatedButton(
               onPressed: (){},
               style: ElevatedButton.styleFrom(
                 backgroundColor: kDarkBlueColor,
                 elevation: 5,
                 fixedSize: Size(200, 50),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                 ),
               ),
               child: const Text("Faire un Don")),
           ),
            Padding(padding: EdgeInsets.only(left: 15, top: 15),
              child:  ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF044a6a),
                    elevation: 5,
                    fixedSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                  ),
                  ),
                  child: const Text("Parrainer")),
            )
          ],
        ),
      ),
    );
  }
}
