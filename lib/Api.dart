import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  //Get request
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is a proplem with the status code${response.body}');
    }
  }

  //Post request
  Future<dynamic> post({
    required String url,
    @required dynamic body,
  }) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there is a proplem with the status code${response.body}');
    }
  }

  //Pot request
  Future<dynamic> put({
    required String url,
    @required dynamic body,
  }) async {
    http.Response response = await http.put(Uri.parse(url), body: body);
    print('url=$url body = $body');
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception('there is a proplem with the status code${response.body}');
    }
  }
}
