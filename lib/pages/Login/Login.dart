import 'dart:async';

import 'package:flutter/material.dart';
import '../../ui/export.dart';
import '../LogicalPage/LogicalPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double widthScale = width / 360;
    double heightScale = height / 640;

    return Scaffold(
      backgroundColor: FvColors.button114FontColor,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(children: [
                const SizedBox(height: 640, width: 360),
//-- Component Rectangle_Container_7 --//
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 360,
                    height: 640,
                    decoration: BoxDecoration(
                      color: FvColors.container7Background,
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),

//-- End Rectangle_Container_7 --//
//-- Component logo_ImageView_8 --//
                Positioned(
                  left: 130,
                  top: 140,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("assets/logo_ImageView_8-100x100.png"),
                  ),
                ),
//-- End logo_ImageView_8 --//
//-- Component TextField_EditText_9 --//

                Positioned(
                    left: 30,
                    top: 260,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Sistem Informasi dan Monitoring",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 16,
                                fontFamily: 'Mulish'),
                          ),
                        ))),
                Positioned(
                    left: 30,
                    top: 280,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "SMK PLUS MULTAZAM",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 16,
                                fontFamily: 'Mulish'),
                          ),
                        ))),
                Positioned(
                    left: 30,
                    top: 330,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            filled: true,
                            fillColor: FvColors.edittext113Background,
                            hintText: 'Usename',
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
                        ))),
//-- End TextField_EditText_9 --//
//-- Component TextField_EditText_10 --//

                Positioned(
                    left: 30,
                    top: 380,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: TextFormField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            filled: true,
                            fillColor: FvColors.edittext113Background,
                            hintText: 'Password',
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
                        ))),
//-- End TextField_EditText_10 --//
//-- Component ButtonPrimary_Button_11 --//
                Positioned(
                    left: 30,
                    top: 430,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: TextButton(
                          child: const Text('Login',
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
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Login Berhasil!")));
                            Timer(Duration(seconds: 5), () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => LogicalPage()));
                            });
                          },
                        ))),
                Positioned(
                    left: 30,
                    top: 470,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "v 1.0.0",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 12,
                                fontFamily: 'Mulish'),
                          ),
                        ))),
                Positioned(
                    left: 30,
                    top: 580,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "Support By :",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 10,
                                fontFamily: 'Mulish'),
                          ),
                        ))),
                Positioned(
                    left: 30,
                    top: 600,
                    child: SizedBox(
                        width: 300,
                        height: 40,
                        child: Center(
                          child: Text(
                            "PAYLITE",
                            style: TextStyle(
                                color: Color.fromARGB(255, 105, 105, 105),
                                fontSize: 14,
                                fontFamily: 'Mulish'),
                          ),
                        ))),
//-- End ButtonPrimary_Button_11 --//
              ]),
            ),
//-- Component ScrollContainer --//
//-- End ScrollContainer --//
          ],
        ),
      ),
    );
  }
}
