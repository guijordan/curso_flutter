import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  static const _url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCorPjyLE5qoMM7GEIdnImyOl6gbk1rDpw';

  Future<void> _autenticate(String email, String password, String urlFragment) async {
    final url = 'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyCorPjyLE5qoMM7GEIdnImyOl6gbk1rDpw';

    final response = await http.post(
      Uri.parse(url),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),
    );
    print(jsonDecode(response.body));
  }

  Future<void> signup(String email, String password) async {
    _autenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    _autenticate(email, password, 'signInWithPassword');
  }
}
