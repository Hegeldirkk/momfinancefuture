

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momoff/api/user.dart';
import 'package:momoff/auth/login.dart';
import 'package:momoff/main.dart';
import 'package:momoff/pages/home.dart';

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


  Future<void> createUserWithEmailAndPassword(String name, String emailAddress, String password, String confirmPassword) async {
    load(true);
    try {
      var url = Uri.parse('https://apimomoff.technology.dirkk.tech/signup');
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
    } catch (e) {
      print(e);
    }

  }


  Future<void> signUserWithEmailAndPassword(String emailAddress, String password) async {
    load(true);
    try {
      var url = Uri.parse('https://apimomoff.technology.dirkk.tech/login');
      await http.post(url, body: {'email': emailAddress, 'password': password})
          .then((value) async {
        print(value.statusCode);
        if (value.statusCode == 200) {
          load(false);
          print(value);
          token = jsonDecode(value.body)['token'];
          await UserSecureStorage.setTokenAuth(token!);
          user = User.fromJson(jsonDecode(value.body)['data']);
          Get.snackbar(
              'Authentification',
              '${user.name} Vous êtes connecté avec succes!',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.lightGreen,
              colorText: Colors.white);
          Get.to(() => const Home(),
              transition: Transition.circularReveal,
              duration: const Duration(seconds: 1));
        } else {
          load(false);
          //signOut();
          print(value.body);
          Get.snackbar(
              'Authentification',
              'Authentification a échoué, veuillez réessayer: ${jsonDecode(
                  value.body)['message']}',
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.redAccent,
              colorText: Colors.white);
        }
      });
    } catch (e) {
      print(e);
    }
  }
}