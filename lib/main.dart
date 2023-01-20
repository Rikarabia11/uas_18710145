import 'package:flutter/material.dart';
import 'menu.dart';
import 'persegi.dart';
import 'lingkaran.dart';
import 'profil.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UAS",
      initialRoute: "/",
      routes: {
        "/": (context) => const menuAwal(),
        hitungPersegi.routeName: (context) => const hitungPersegi(),
        hitungLingkaran.routeName: (context) => const hitungLingkaran(),
        profileDev.routeName: (context) => const profileDev(),
      },
    ),
  );
}
