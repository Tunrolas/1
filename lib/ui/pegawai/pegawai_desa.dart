import 'package:flutter/material.dart';
import '../../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      drawer: Sidebar(), 
      body: Center(
        child: Text("Untuk saat ini, anda belum bisa menggunakan fittur ini "),
      ),
    );
  }
}
