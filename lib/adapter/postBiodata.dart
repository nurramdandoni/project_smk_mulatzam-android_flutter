import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../globals.dart' as globals;

class postBiodata {
  String status;
  String message;
  postBiodata({required this.status, required this.message});

  factory postBiodata.createpostBiodata(Map<String, dynamic> object) {
    _setTemp() async {
      final prefs = await SharedPreferences.getInstance();
      if (object["status"].toString() == "200") {
        prefs.setString("username", object["data"]["username"].toString());
        prefs.setString("id_siswa", object["data"]["id_siswa"].toString());
        prefs.setString("nama_siswa", object["data"]["nama_siswa"].toString());
        log("ini setter : " + prefs.getString("role").toString());
        log("ini variabel global : " + globals.baseUrl);
      }
    }

    _setTemp();

    return postBiodata(
      status: object["status"].toString(),
      message: object["messages"]["success"].toString(),
    );
  }

  static Future<postBiodata> connectAPI(
      String username, String password) async {
    String apiURL = globals.baseUrl + 'biodataSiswa/';
    var savedData = [];
    var apiResult = await http
        .post(apiURL, body: {"username": username, "password": password});
    var jsonObject = json.decode(apiResult.body);

    // Data.setData("username", jsonObject["username"]);
    // Data.setData('id_siswa', jsonObject["id_siswa"]);
    // Data.setData('nama_siswa', jsonObject["nama_siswa"]);
    log(jsonObject["data"].toString());

    return postBiodata.createpostBiodata(jsonObject);
  }
}
