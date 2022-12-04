import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../preference.dart';

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
        log("ini setter : " + prefs.getString("username").toString());
      }
    }

    _setTemp();

    return postLogin(
      status: object["status"].toString(),
      message: object["messages"]["success"].toString(),
    );
  }

  static Future<postLogin> connectAPI(String username, String password) async {
    String apiURL = 'https://f78b-180-241-241-41.ap.ngrok.io/login';
    var savedData = [];
    var apiResult = await http
        .post(apiURL, body: {"username": username, "password": password});
    var jsonObject = json.decode(apiResult.body);

    // Data.setData("username", jsonObject["username"]);
    // Data.setData('id_siswa', jsonObject["id_siswa"]);
    // Data.setData('nama_siswa', jsonObject["nama_siswa"]);
    log(jsonObject["data"].toString());

    return postLogin.createpostLogin(jsonObject);
  }
}
