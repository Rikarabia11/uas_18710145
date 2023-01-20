import 'package:flutter/material.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profil.dart';
//import 'package:uas/main.dart';
//import 'package:percobaan7_tugas_uts/screen/barang_view.dart';
//import 'package:percobaan7_tugas_uts/screen/login.dart';

// ignore: camel_case_types
class menuAwal extends StatefulWidget {
  static const routeName = "/menuAwal";

  const menuAwal({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _menuAwalPageState createState() => _menuAwalPageState();
}

// ignore: camel_case_types
class _menuAwalPageState extends State<menuAwal> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/IMG_1159.JPG",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(151, 39, 39, 39),
            title: const Text('MAIN MENU'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  height: 60,
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const hitungPersegi()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(239, 37, 37, 37)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text(
                      'LUAS PERSEGI\nPilih Untuk Hitung Luas Persegi',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 60,
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const hitungLingkaran()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(239, 37, 37, 37)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text(
                      'LUAS LINGKARAN\nPilih Untuk Hitung Luas Liangkaran',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 60,
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profileDev()));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(239, 37, 37, 37)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text(
                      'PROFIL DEVELOPER',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
