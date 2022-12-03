import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Biodata extends StatefulWidget {
  const Biodata({Key? key}) : super(key: key);

  @override
  _BiodataState createState() => _BiodataState();
}

class _BiodataState extends State<Biodata> {
  @override
  Widget build(BuildContext context) {
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
                            "Hallo, Stevanie!",
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
                    initialValue: '2022-0054-0001',
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
                    initialValue: 'Rekayasa Perangkat Lunak',
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
                    initialValue: 'XI RPL 1',
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
                    initialValue: 'Stevanie Agustina Putri',
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
                    initialValue: 'Jakarta, 14 Mei 1990',
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
                    initialValue: 'Perempuan',
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
                    initialValue: 'stevanie.agustine@gmail.com',
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
                    initialValue: '0895330802688',
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
                    initialValue: 'Kuningan, Jawa Barat',
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
