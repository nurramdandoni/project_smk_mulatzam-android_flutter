import 'package:flutter/material.dart';
import '../../ui/export.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../adapter/getBiodata.dart';
import 'dart:convert';
import 'dart:developer';
import 'package:ApplicationName/globals.dart' as globals;

class Biodata extends StatefulWidget {
  const Biodata({Key? key}) : super(key: key);

  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  var username = '';
  var id_siswa = '';
  var nama_siswa = '';
  final TextEditingController BiodataNamaController = TextEditingController();
  final TextEditingController BiodataNisController = TextEditingController();
  final TextEditingController BiodataJurusanController =
      TextEditingController();
  final TextEditingController BiodataKelasController = TextEditingController();
  final TextEditingController BiodataTtlController = TextEditingController();
  final TextEditingController BiodataJkController = TextEditingController();
  final TextEditingController BiodataEmailController = TextEditingController();
  final TextEditingController BiodataTelpController = TextEditingController();
  final TextEditingController BiodataAlamatController = TextEditingController();
  getBiodata? getResult = null;
  @override
  Widget build(BuildContext context) {
    getTemp() async {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        username = prefs.getString("username").toString();
        id_siswa = prefs.getString("id_siswa").toString();
        nama_siswa = prefs.getString("nama_siswa").toString();
      });
    }

    if (username == '') {
      getTemp();
    }
    getBiodata.getBioSiswaAPI(id_siswa).then((value) {
      getResult = value;
      BiodataNamaController.text = value.namaLengkap.toString();
      BiodataNisController.text = value.nis.toString();
      BiodataJurusanController.text = value.namaJurusan.toString();
      BiodataKelasController.text = value.namaKelas.toString();
      BiodataTtlController.text =
          value.tl.toString() + ', ' + value.tgl.toString();
      BiodataJkController.text = value.jenisKelamin.toString();
      BiodataEmailController.text = value.email.toString();
      BiodataTelpController.text = value.telp.toString();
      BiodataAlamatController.text = value.alamat.toString();
    });
    log("ini variabel global : " + globals.baseUrl);
    log("ini variabel nama : " + BiodataNamaController.text);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double widthScale = width / 360;
    double heightScale = height / 640;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            nama_siswa,
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 156, 102, 219),
                            ),
                          ),
                          SizedBox(
                              width: 100,
                              height: 30,
                              child: TextButton(
                                child: const Text('Logout',
                                    overflow: TextOverflow.visible,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 156, 102, 219),
                                      fontWeight: FontWeight.w700,
                                    )),
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  backgroundColor:
                                      Color.fromARGB(255, 206, 206, 206),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(0, 53, 53, 53),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                              ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(110, 0, 0, 0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Stack(
                            alignment: Alignment.center,
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                child: SizedBox(
                                  width: 50 * widthScale,
                                  height: 50 * heightScale,
                                  child: Image.asset(
                                      "assets/Ellipse_ImageView_53-50x50.png"),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(mainAxisSize: MainAxisSize.max, children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 30),
              child: Center(
                child: Text(
                  "Biodata",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Mulish',
                      color: Color.fromARGB(255, 156, 102, 219)),
                ),
              ),
            ), // header
            // awal biodata
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataNisController,
                    readOnly: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 223, 223),
                      hintText: 'NIS',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataJurusanController,
                    readOnly: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 223, 223),
                      hintText: 'Jurusan',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataKelasController,
                    readOnly: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 223, 223),
                      hintText: 'Kelas',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataNamaController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'Nama Lengkap',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataTtlController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'Tempat, Tanggal Lahir',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataJkController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'Jenis Kelamin',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataEmailController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataTelpController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'No. HP/ WhatsApp',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextFormField(
                    controller: BiodataAlamatController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      filled: true,
                      fillColor: FvColors.edittext113Background,
                      hintText: 'Alamat',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(215, 215, 215, 1)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(width: 1),
                      ),
                    ),
                    style: const TextStyle(
                        color: FvColors.edittext113FontColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: SizedBox(
                  width: 300,
                  height: 40,
                  child: TextButton(
                    child: const Text('Simpan',
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: 16,
                          color: FvColors.button114FontColor,
                          fontWeight: FontWeight.w700,
                        )),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: FvColors.button114Background,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    onPressed: () {},
                  )),
            )
            // akhir biodata
          ])
        ],
      ),
    );
  }
}
