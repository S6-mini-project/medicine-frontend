import 'dart:async';
import 'dart:convert';
import './user_profile.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../widgets/loginWidget.dart';

String access_token = '';
String refresh_token = '';
String rf = '';
// String api='http://192.168.18.178:5000';
class AuthUser {
  final String access_token;
  final String refresh_token;

  const AuthUser({required this.access_token, required this.refresh_token});
  factory AuthUser.fromJson(Map<String, dynamic> json) {
    return AuthUser(
        access_token: json['access'], refresh_token: json['refresh']);
  }
}

Future<AuthUser> _createAuthUser(String id, String pass) async {
  final response = await http.post(
        // Uri.parse('http://192.168.38.252:5000/api/login'), 
    Uri.parse('http://192.168.18.178:5000/api/login'), // TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': id,
      'password': pass,
    }),
  );
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return AuthUser.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to convert!');
  }
}

Future<bool> login(String id, String pass) async {
  print('Login Invoked');
  Future<AuthUser> au;
  try {
    await _createAuthUser(id, pass).then((value) {
      access_token = value.access_token;
      refresh_token = value.refresh_token;
      print('Tokens Generated');
      getProfile();
    });
  } catch (e) {
    print('Error');
    return false;
  }
  return true;
}
 

Future<AuthUser> _LogoutUser(String refreshToken) async {
  final response = await http.post(
    // Uri.parse('http://192.168.38.252:5000/api/logout'),
    Uri.parse('http://192.168.18.178:5000/api/logout'), // TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'refresh_token': refreshToken,
    }),
  );
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
   
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to convert!');
  }
}

Future<bool> logout() async {
  print('Logout Invoked');
  Future<AuthUser> au;
  try {
    // print(refresh_token);
    await _LogoutUser(refresh_token).then((value) {
     
    });
  } catch (e) {
    // print('Error');
    return true;
  }
  return true;
}

Future<bool> _signupAuthUser(String name,String id, String pass,String cpass) async {
  final response = await http.post(
        // Uri.parse('http://192.168.38.252:5000/api/register'), 
    Uri.parse('http://192.168.18.178:5000/api/register'), // TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': id,
      'name' : name,
      'password': pass,
      'password2': cpass,
      'tc': 'True'
    }),
  );
  print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return true;
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to convert!');
  }
  
}

//signup 
Future<bool> signup(String name,String id, String pass,String cpass) async {
  print('signup Invoked');
  Future<AuthUser> au;
  try {
    await _signupAuthUser(name,id, pass,cpass).then((value) {
      print('Tokens Generated for new user');
    });
  } catch (e) {
    return true;
  }
  return true;
}
 