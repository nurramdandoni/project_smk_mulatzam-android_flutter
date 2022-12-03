import 'package:flutter/material.dart';
import '../../ui/export.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                  "Jadwal Pelajaran Hari ini",
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
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtask_ImageView_19-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Pendidikan Kewarganegaraan",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxusercircle_ImageView_31-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Doni Nurramdan, A. Md, IoT",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtime_ImageView_32-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "07:00 - 08:30 WIB.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 150,
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
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtask_ImageView_19-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Bahasa Inggris",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxusercircle_ImageView_31-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Metta Iriana, S. Pd.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtime_ImageView_32-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "08:30 - 10:00 WIB.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 150,
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
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtask_ImageView_19-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Pendidikan Agama Islam",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxusercircle_ImageView_31-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Aan Nurlisvianti, S. Pd.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtime_ImageView_32-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "10:00 - 11:30 WIB.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 150,
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
                              child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtask_ImageView_19-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Fisika",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxusercircle_ImageView_31-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "Tuharyeni Dewi, S. Pd.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 7, 0, 0),
                                    child: Image.asset(
                                        "assets/bxtime_ImageView_32-35x35.png"),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 5, 0, 0),
                                    child: Text(
                                      "12:30 - 13;30 WIB.",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mulish',
                                          fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                        ),
                        width: 300,
                        height: 150,
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
