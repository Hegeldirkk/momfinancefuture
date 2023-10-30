

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/auth/login.dart';

import '../api/secure.dart';
import 'package:http/http.dart' as http;

class AuthService extends GetxController{

  TextEditingController inputEmailController = TextEditingController();
  TextEditingController inputNomController = TextEditingController();
  TextEditingController inputPwdController = TextEditingController();
  TextEditingController inputConfPwdController = TextEditingController();
  RxBool hideLogin = false.obs;
  RxBool load = false.obs;
  static AuthService get to => Get.find();


  statusChange() {
    if(load.isTrue){
      load(false);
    } else {
      load(true);
    }
    //load();
  }

  /*getInfoArbitre()async{
    final userId =  await UserSecureStorage.getTokenAuth();
    users.doc(userId)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
        arbitre = Arbitre.fromJson(documentSnapshot.data() as Map<String,dynamic>);
      } else {
        print('Document does not exist on the database');
      }
    });
  }*/

  Future<void> createUserWithEmailAndPassword(String name, String emailAddress, String password, String confirmPassword) async {
    load(true);
    try {
      var url = Uri.parse('http://192.168.43.230:6000/signup');
      await http.post(url, body: {'name': name, 'email': emailAddress, 'password': password, 'confirmPassword': confirmPassword }).then((value) async {
        print(value.statusCode);
        if (value.statusCode == 201){
          load(false);
          print(value);
          Get.snackbar(
              'Inscription',
              'Vous êtes inscrit avec succes!',
              snackPosition: SnackPosition.TOP, backgroundColor: Colors.lightGreen, colorText: Colors.white);
          Get.to(() => const Login(), transition: Transition.leftToRightWithFade, duration: const Duration(seconds: 1));
        }else{
          load(false);
          //signOut();
          print(value.body);
          Get.snackbar(
              'Inscription',
              'Inscription a échoué, veuillez réessayer: ${jsonDecode(value.body)['message']}',
              snackPosition: SnackPosition.TOP, backgroundColor: Colors.redAccent, colorText: Colors.white);
          //Get.to(()=> Inscription(), transition: Transition.noTransition);
        }
      });
      /*await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      ).then((value) async {
        if (value != null){
          var uuid = Uuid();
          token = uuid.v4();
          await UserSecureStorage.setTokenAuthIns(token!);
          print(value.user);
          tokLog = value.user!.uid;
          email = value.user!.email;
          load(false);
          Get.snackbar(
              'Inscription',
              '${value.user!.email} inscrit avec succes!',
              snackPosition: SnackPosition.TOP, backgroundColor: Colors.lightGreen, colorText: Colors.white);
          //Get.to(() => CreateUser(), transition: Transition.leftToRightWithFade, duration: const Duration(seconds: 1));
        }else{
          signOut();
          //Get.to(()=> Inscription(), transition: Transition.noTransition);
        }
      });*/
    } catch (e) {
      print(e);
    }

  }


  Future<void> signUserWithEmailAndPassword(String emailAddress, String password) async {
    load(true);
    try {
      var url = Uri.parse('http://192.168.43.230:6000/signup');
      await http.post(url, body: {'email': emailAddress, 'password': password})
          .then((value) async {
        print(value.statusCode);
        if (value.statusCode == 200) {
          load(false);
          print(value);
          await UserSecureStorage.setTokenAuth(jsonDecode(value.body)['token']);
          Get.snackbar(
              'Inscription',
              'Vous êtes inscrit avec succes!',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.lightGreen,
              colorText: Colors.white);
          Get.to(() => const Login(),
              transition: Transition.leftToRightWithFade,
              duration: const Duration(seconds: 1));
        } else {
          load(false);
          //signOut();
          print(value.body);
          Get.snackbar(
              'Inscription',
              'Inscription a échoué, veuillez réessayer: ${jsonDecode(
                  value.body)['message']}',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.redAccent,
              colorText: Colors.white);
          //Get.to(()=> Inscription(), transition: Transition.noTransition);
        }
      });
    } catch (e) {
      print(e);
    }
    /*await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      ).then((value) async{
        if (value != null){
          await UserSecureStorage.setTokenAuth(value.user!.displayName!);
          users.doc(value.user!.displayName)
              .get()
              .then((DocumentSnapshot documentSnapshot) {
            if (documentSnapshot.exists) {
              print('Document data: ${documentSnapshot.data()}');
              arbitre = Arbitre.fromJson(documentSnapshot.data() as Map<String,dynamic>);
              Get.to(() => Home(), transition: Transition.circularReveal,
                  duration: const Duration(seconds: 1));
            } else {
              print('Document does not exist on the database');
            }
          });
          print(value.user);
          load (false);
        }
      });
    } on FirebaseAuthException catch (e) {
      load(false);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

  }
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }*/
  }
}