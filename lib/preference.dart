import 'package:shared_preferences/shared_preferences.dart'; // import module untuk baca dan tulis Shared Preferences
import 'dart:convert';

class Data {
  static setData(String key, String value) async {
    final set = await SharedPreferences.getInstance();
    set.setString(key, value);
    return json.encode(key);
  }

  static getDataUsername() async {
    final prefs = await SharedPreferences.getInstance();
    var usr = prefs.getString("username");
    return usr;
  }

  static getDataIdSiswa() async {
    final prefs = await SharedPreferences.getInstance();
    var id = prefs.getString("id_siswa");
    return id;
  }

  static getDataNamaSiswa() async {
    final prefs = await SharedPreferences.getInstance();
    var nama = prefs.getString("nama_siswa");
    return nama;
  }
}
