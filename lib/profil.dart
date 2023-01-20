import 'package:flutter/material.dart';

// ignore: camel_case_types
class profileDev extends StatefulWidget {
  static const routeName = "/profileDev";

  const profileDev({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _profileDevPageState createState() => _profileDevPageState();
}

// ignore: camel_case_types
class _profileDevPageState extends State<profileDev> {
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
            backgroundColor: const Color.fromARGB(111, 48, 48, 48),
            title: const Text('PROFILE DEVELOPER'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Color.fromARGB(124, 201, 201, 201),
                    child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('assets/IMG_4452.jpg')),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'RIKA AGUSTINA',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    backgroundColor: const Color.fromARGB(125, 87, 82, 82),
                    foreground: Paint()
                      ..color = Colors.white
                      ..strokeWidth = 3
                      ..style = PaintingStyle.stroke,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'NPM : 18710145\nWA : +6282159908811',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    backgroundColor: const Color.fromARGB(125, 87, 82, 82),
                    foreground: Paint()
                      ..color = Colors.white
                      ..style = PaintingStyle.fill,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(Icons.whatsapp, size: 50, color: Colors.white70),
                      Icon(Icons.facebook, size: 50, color: Colors.white70),
                      Icon(Icons.telegram, size: 50, color: Colors.white70),
                      Icon(Icons.image, size: 50, color: Colors.white70)
                    ]),
                const SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  child: Text(
                    'TUGAS UAS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      backgroundColor: const Color.fromARGB(125, 87, 82, 82),
                      foreground: Paint()
                        ..color = Colors.white
                        ..style = PaintingStyle.fill,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    'Mata Kuliah : Pemrograman Mobile\nKelas : 5A NonReguler Banjarmasin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      backgroundColor: const Color.fromARGB(125, 87, 82, 82),
                      foreground: Paint()
                        ..color = Colors.white
                        ..style = PaintingStyle.fill,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 350,
                  //child: ,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
