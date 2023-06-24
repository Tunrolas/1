import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Sidebar(), 
      appBar: AppBar(title: Text("Beranda")),
      body: Center(
        child: Text("Selamat datang di sipedes"),
      ),
    );
  }
}
