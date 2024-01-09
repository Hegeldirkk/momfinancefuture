import 'package:flutter/material.dart';
import 'package:momoff/pages/paiement.dart';

//import '../perso/perso.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String photographer;
  final String price;
  final String details;
  final int index;
  DetailsPage(
      {
        required this.imagePath,
      required this.title,
      required this.photographer,
      required this.price,
      required this.details,
      required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: 'logo$index',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'par $photographer',
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 240, 204, 0),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          details,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          //padding: const EdgeInsets.symmetric(vertical: 15),
                          //color: Colors.lightBlueAccent,
                          child: const Text(
                            'Retour',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextButton(
                         
                             onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) =>  const Payment())),
                              
                          child: const Text(
                            'Faire un don',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}