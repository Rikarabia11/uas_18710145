import 'package:flutter/material.dart';

// ignore: camel_case_types
class hitungLingkaran extends StatefulWidget {
  static const routeName = "/hitungLingkaran";

  const hitungLingkaran({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _hitungLingkaranPageState createState() => _hitungLingkaranPageState();
}

// ignore: camel_case_types
class _hitungLingkaranPageState extends State<hitungLingkaran> {
  TextEditingController jariInput = TextEditingController();
  String result = "0";
  String jari = "0";
  double pii = 3.14;
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
            title: const Text('Luas Lingkaran'),
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
                    controller: jariInput,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white60,
                      border: OutlineInputBorder(),
                      labelText: 'Masukkan jari',
                      hintText: '0',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                    'Luas Lingkaran = 3.14 x $jari x $jari\nLuas Lingkaran = $result',
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
                          if (jariInput.text == "") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Peringatan : Inputan Salah')));
                          } else {
                            double sum = int.parse(jariInput.text) *
                                int.parse(jariInput.text) *
                                pii;
                            jari = jariInput.text;
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
                    child: const Text('Hitung Luas Lingkaran'),
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
