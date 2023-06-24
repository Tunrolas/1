import 'package:flutter/material.dart';
import 'package:klinik_app/widget/sidebar.dart';
import 'pegawai_form.dart';
import '../../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pegawai"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiForm()));
            },
          )
        ],
      ),
      body: ListView(children: [
        GestureDetector(
          child: const Card(
            child: ListTile(
              title: Text("pegawai 1"),
            ),
          ),
          onTap: () {
            Pegawai pegawai1 = Pegawai(
              id: "1",
              nama: "Arlan Maulana",
              nip: "12211225",
              ttl: "Karawang,16 Juli 2002",
              telp: "08171821121",
              email: "arlanmaulana520@gmail.com",
              password: "Arlanmaulana",
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: pegawai1)));
          },
        ),
        const Card(
          child: ListTile(
            title: Text("pegawai 2"),
          ),
        ),
        const Card(
          child: ListTile(
            title: Text("pegawai 3"),
          ),
        )
      ]),
    );
  }
}
