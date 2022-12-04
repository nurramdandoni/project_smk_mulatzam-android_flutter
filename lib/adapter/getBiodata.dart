import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../preference.dart';
import '../globals.dart' as globals;

class getBiodata {
  String nis;
  String namaJurusan;
  String namaKelas;
  String namaLengkap;
  String tl;
  String tgl;
  String jenisKelamin;
  String email;
  String telp;
  String alamat;
  getBiodata(
      {required String this.nis,
      required this.namaJurusan,
      required this.namaKelas,
      required this.namaLengkap,
      required this.tl,
      required this.tgl,
      required this.jenisKelamin,
      required this.email,
      required this.telp,
      required this.alamat});

  factory getBiodata.creategetBiodata(Map<String, dynamic> object) {
    return getBiodata(
        nis: object["nis"],
        namaJurusan: object["nama_jurusan"],
        namaKelas: object["nama_kelas"],
        namaLengkap: object["nama_siswa"],
        tl: object["tl"],
        tgl: object["tgl"],
        jenisKelamin: object["jenis_kelamin"],
        email: object["email"],
        telp: object["telp"],
        alamat: object["alamat"]);
  }

  static Future<getBiodata> getBioSiswaAPI(String idSiswa) async {
    String apiURL = globals.baseUrl + 'biodataSiswa/' + idSiswa;
    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    log(jsonObject["data"].toString());

    return getBiodata.creategetBiodata(jsonObject);
  }
}
