import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pilar/models/User.dart';

// The rang of the Accepted HTTP Status
const HTTP_MIN_STATUS = 200;
const HTTP_MAX_STATUS = 299;

Future<UserModel> loginUser(String email, String password) async {
  String url = 'https://abogadosespecialistasdespidos.com/api/login';
  final response = await http.post(url,
      headers: <String, String>{"Accept": "Application/json"},
      body: {'email': email, 'password': password});
  if (response.statusCode >= HTTP_MIN_STATUS &&
      response.statusCode <= HTTP_MAX_STATUS) {
    var jsonString = response.body;
    print('Success, log in correct');
    return UserModel.fromJson(json.decode(jsonString));
  } else {
    print(response.statusCode);
    return null;
  }
}
