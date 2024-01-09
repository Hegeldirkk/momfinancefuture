import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/paiement.dart';

class choice extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<choice> {
  final _controller = ConfettiController();
  
  final Color kDarkBlueColor = const Color(0xFFefc50d);
  bool isPlaying = false;
  TextEditingController customAmountController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }


  void _showCongratulations() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Félicitations'),
          content: const Text('Merci pour votre don !'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }


//class choice extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
     Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Paiement ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Flèche retour en noir
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
        body: Padding(
          
        padding: const EdgeInsets.all(30.0),
        
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,

          
          children: [
              const SizedBox(height: 16),
            const PaymentOptionBox(amount: '500,000 FCFA', color:Color.fromARGB(255, 236, 236, 236),elevation: 15,),
            const PaymentOptionBox(amount: '1,000,000 FCFA', color: Color.fromARGB(255, 236, 236, 236),elevation: 15,),
            const PaymentOptionBox(amount: '2,000,000 FCFA', color: Color.fromARGB(255, 236, 236, 236),elevation: 15,),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: customAmountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Saisissez le Montant en FCFA',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                
                Get.to(() =>  const Payment(), 
                  transition: Transition.cupertino,
                           duration: const Duration(seconds: 2)
                           );
                  _showCongratulations;
                if (isPlaying){
                  _controller.stop();
                
              }  else {
                 _controller.play();
              }
              isPlaying = !isPlaying;
              },
              
              style: ElevatedButton.styleFrom(
                 backgroundColor: kDarkBlueColor,
                 elevation: 5,
                 fixedSize: const Size(360, 50),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(19.0), // Vous pouvez ajuster le rayon pour obtenir l'arrondi souhaité
                 ),
               ),
             child:  const Text('Paiement par MTN MONEY')  
                        ),

      ConfettiWidget(
              confettiController: _controller,
              blastDirection: pi / 2, 
              emissionFrequency: 0.01,
              numberOfParticles: 30, 
              /*colors: const [
                Colors.blue,
                Colors.yellowAccent
              ],*/
              gravity: 0.01,
              ),
        ]
        )
        )
       ) 
      ]
    );
 }
}
class PaymentOptionBox extends StatelessWidget {
  final String amount;
  final Color color;
  final  elevation;

  const PaymentOptionBox({required this.amount, required this.color, required this. elevation});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Text(
            amount,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Icon(
            Icons.emoji_events_rounded,
            size: 30,
            color: Color.fromRGBO(254, 203, 0, 1),
          ),
          
        ],
      ),
    );
  }
}