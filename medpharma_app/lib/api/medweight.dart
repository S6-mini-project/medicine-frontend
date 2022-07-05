import 'dart:convert';

import 'package:http/http.dart' as http;

class Medweight{
  String getMedUrl = "http://192.168.18.178:5000/api/medicine";
  Future<List> getMedWeight() async {
    try {
      var response = await http.get(Uri.parse(getMedUrl));
      if(response.statusCode == 200) {
        return jsonDecode(response.body);
        }
      else{
        return Future.error('Server error');
      }
    }
    catch(e){
      return Future.error(e);
    }
  }
}