import 'package:flutter/material.dart';
import '../../ui/export.dart';
import '../Dashboard/Dashboard.dart';
import '../Absensi/Absensi.dart';
import '../Nilai/Nilai.dart';
import '../Biodata/Biodata.dart';

class LogicalPage extends StatefulWidget {
  const LogicalPage({Key? key}) : super(key: key);

  @override
  _LogicalPageState createState() => _LogicalPageState();
}

class _LogicalPageState extends State<LogicalPage> {
  int cI = 0;
  final halaman = [Dashboard(), Absensi(), Nilai(), Biodata()];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double widthScale = width / 360;
    double heightScale = height / 640;

    return Scaffold(
      body: halaman[cI],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: cI,
          onTap: (index) => setState(() {
                cI = index;
              }),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                    "assets/antdesignhomeoutlined_ImageView_66-35x35.png"),
                label: "Dashboard",
                backgroundColor: Color.fromARGB(255, 156, 102, 219)),
            BottomNavigationBarItem(
                icon: Image.asset("assets/Group_ImageView_101-35x35.png"),
                label: "Absensi",
                backgroundColor: Color.fromARGB(255, 156, 102, 219)),
            BottomNavigationBarItem(
                icon: Image.asset(
                    "assets/arcticonsscoresheets_ImageView_102-35x35.png"),
                label: "Nilai",
                backgroundColor: Color.fromARGB(255, 156, 102, 219)),
            BottomNavigationBarItem(
                icon:
                    Image.asset("assets/codiconaccount_ImageView_90-35x35.png"),
                label: "Biodata",
                backgroundColor: Color.fromARGB(255, 156, 102, 219)),
          ]),
    );
  }
}
