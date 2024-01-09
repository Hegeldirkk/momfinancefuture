import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class UserSecureStorage{

  static final _storage = FlutterSecureStorage();

  static const _keyTokenAuthIns = "tokenAuthIns";
  static const _keyTokenAuth = "tokenAuth";


  ///Stockage sécurisé du token d'inscription
  static Future setTokenAuthIns(String tokenIns) async =>
      await _storage.write(key: _keyTokenAuthIns, value: tokenIns);

  static Future<String?> getTokenAuthIns() async =>
      await _storage.read(key: _keyTokenAuthIns);

  ///Stockage sécurisé du token d'authentification
  static Future setTokenAuth(String token) async =>
      await _storage.write(key: _keyTokenAuth, value: token);

  static Future<String?> getTokenAuth() async =>
      await _storage.read(key: _keyTokenAuth);

  ///desauthentification (suppression du token)
  static Future<void> deConAll() async =>
      await _storage.deleteAll();

  static Future<void> deCon() async =>
      await _storage.delete(key: _keyTokenAuth);

}