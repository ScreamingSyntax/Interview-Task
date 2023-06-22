import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:interview/api/ip.dart';
import 'package:interview/controller/hello_model_controller.dart';
import 'package:interview/models/hello_model.dart';

Future<bool> fetchHello() async {
  http.Response response = await http.get(
    Uri.parse("http://${getIp()}/api/user/"),
    headers: {"Content-Type": "application/json"},
  );
  var body = response.body;
  var jsonArray = jsonDecode(body) as Map<String, dynamic>;
  print(jsonArray);
  try {
    if (jsonArray["success"] == 0) {
      HelloController.hello = [HelloModel.fromJson(jsonArray)];
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
