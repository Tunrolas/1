import 'package:flutter/material.dart';
import '../../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';

import '../../widget/sidebar.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Pembuatan surat"),
        actions: [
        
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Surat Domisili")),
          PoliItem(poli: Poli(namaPoli: "Surat keterangan usaha")),
          PoliItem(poli: Poli(namaPoli: "Surat keterangan tidak mampu")),
          PoliItem(poli: Poli(namaPoli: "Surat keterangan kematian")),
        ],
      ),
    );
  }
}
