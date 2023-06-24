import 'package:flutter/material.dart';
import 'package:klinik_app/widget/sidebar.dart';
import 'pasien_form.dart';
import '../../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienForm()));
            },
          )
        ],
      ),
      body: ListView(children: [
        GestureDetector(
          child: const Card(
            child: ListTile(
              title: Text("Pasien 1"),
            ),
          ),
          onTap: () {
            Pasien pasien1 = Pasien(
              id: "001",
              nama: "Arlan",
              nomor_rm: "123",
              ttl: "Karawang, 16 juli 2002",
              telp: "082183718319",
              alamat: "Karawang",
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PasienDetail(pasien: pasien1)));
          },
        ),
        const Card(
          child: ListTile(
            title: Text("Pasien 2"),
          ),
        ),
        const Card(
          child: ListTile(
            title: Text("Pasien 3"),
          ),
        )
      ]),
    );
  }
}
