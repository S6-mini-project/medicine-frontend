import 'dart:convert';
import './login.dart';
import 'package:flutter/material.dart';
import './user.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

String email_id = '';
String user_id = '';
String user_name = '';

class Profile {
  String email_id;
   String user_id;
  String user_name;

  Profile(
      {required this.email_id,
      required this.user_name,
       required this.user_id});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      user_id: json['id'].toString(),
      email_id: json['email'],
      user_name: json['name'],
    );
  }
}

void copy({
  String? iuser_name,
  String? iuser_id,
  String? iemail,
}) {
  user_id = iuser_id ?? user_id;
  user_name = iuser_name ?? user_name;
  email_id = iemail ?? email_id;
}

Future<Profile> _getProfile() async {
  // print(access_token);
  final response = await http.get(
    Uri.parse('http://192.168.18.178:5000/api/profile'), //TODO
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer '+access_token,
    },
  );
  // print(response.body);
  if (response.statusCode == 200) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.

    return Profile.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to convert!');
  }
}

Future<bool> getProfile() async {
  print('Get Profile Invoked');
  try {
    await _getProfile().then((value) {
      // print(email_id);
      email_id = value.email_id;
      user_id = value.user_id;
      user_name = value.user_name;
      print('Profile Obtained');
    });
  } catch (e) {
    print('Error $e');
    return false;
  }
  return true;
}