import 'package:flutter/material.dart';
import 'ui/poli/poli_page.dart';
import 'ui/pegawai/pegawai_page.dart';
import 'ui/pasien/pasien_page.dart';
import 'ui/beranda.dart';
import '/ui/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sipedes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Beranda(),
    );
  }
}
