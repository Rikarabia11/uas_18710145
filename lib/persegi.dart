import 'package:flutter/material.dart';

// ignore: camel_case_types
class hitungPersegi extends StatefulWidget {
  static const routeName = "/hitungPersegi";

  const hitungPersegi({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _hitungPersegiPageState createState() => _hitungPersegiPageState();
}

// ignore: camel_case_types
class _hitungPersegiPageState extends State<hitungPersegi> {
  TextEditingController panjanginput = TextEditingController();
  TextEditingController lebarinput = TextEditingController();
  String result = "0";
  String panjang = "0";
  String lebar = "0";

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
            backgroundColor: const Color.fromARGB(125, 87, 82, 82),
            title: const Text('Hitung Luas Persegi'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: panjanginput,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white60,
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Panjang',
                      hintText: '0',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: lebarinput,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white60,
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan Lebar',
                      hintText: '0',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text('Luas Persegi = $panjang x $lebar\nLuas Persegi = $result',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: 250,
                  child: TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (panjanginput.text == "" ||
                              lebarinput.text == "") {
                            panjang = '0';
                            lebar = '0';
                            result = '0';
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Cek Inputan')));
                          } else {
                            int sum = int.parse(panjanginput.text) *
                                int.parse(lebarinput.text);
                            panjang = panjanginput.text;
                            lebar = lebarinput.text;
                            result = sum.toString();
                          }
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(239, 37, 37, 37)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text('Hitung Luas Persegi'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
