import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../preference.dart';
import '../globals.dart' as globals;

class postLogin {
  String status;
  String message;
  postLogin({required this.status, required this.message});

  factory postLogin.createpostLogin(Map<String, dynamic> object) {
    _setTemp() async {
      final prefs = await SharedPreferences.getInstance();
      if (object["status"].toString() == "200") {
        prefs.setString("username", object["data"]["username"].toString());
        prefs.setString("id_siswa", object["data"]["id_siswa"].toString());
        prefs.setString("nama_siswa", object["data"]["nama_siswa"].toString());
        prefs.setString("role", object["data"]["role"].toString());
        log("ini setter : " + prefs.getString("role").toString());
      }
    }

    _setTemp();

    return postLogin(
      status: object["status"].toString(),
      message: object["messages"]["success"].toString(),
    );
  }

  static Future<postLogin> connectAPI(String username, String password) async {
    String apiURL = globals.baseUrl + 'login';
    var savedData = [];
    var apiResult = await http
        .post(apiURL, body: {"username": username, "password": password});
    var jsonObject = json.decode(apiResult.body);
    log(jsonObject["data"].toString());

    return postLogin.createpostLogin(jsonObject);
  }
}
