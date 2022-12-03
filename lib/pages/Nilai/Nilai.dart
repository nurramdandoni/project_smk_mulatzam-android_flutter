import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Nilai extends StatefulWidget {
  const Nilai({Key? key}) : super(key: key);

  @override
  _NilaiState createState() => _NilaiState();
}

class _NilaiState extends State<Nilai> {
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
                      child: Text(
                        "Hallo, Stevanie!",
                        style: TextStyle(
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 156, 102, 219),
                        ),
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 0),
              child: Center(
                child: Text(
                  "Nilai Mata Pelajaran",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Mulish',
                      color: Color.fromARGB(255, 156, 102, 219)),
                ),
              ),
            ), // header
            // awal looping
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Matematika",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Fisika",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Kimia",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Bahasa Indonesia",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Bahasa Inggris",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Pendidikan Agama Islam",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            InkWell(
              splashColor: Colors.amber,
              onTap: () {},
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                child: Center(
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Image.asset(
                                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  "Pendidikan Kewarganegaraan",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mulish',
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 75,
                        decoration: BoxDecoration(
                          color: FvColors.button114Background,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ))),
              ),
            ),
            // akhir looping
          ])
        ],
      ),
    );
  }
}
