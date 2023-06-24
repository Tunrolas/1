import 'package:flutter/material.dart';

import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui/poli/poli_page.dart';
import '../ui/pegawai/pegawai_page.dart';
import '../ui/pasien/pasien_page.dart';
class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Yudi"),
              accountEmail: Text("Yudiantoro1@xxxx.com")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Profil"),
            onTap: () {

               Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Beranda()));
              },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Pelayanan Desa"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Data Penduduk"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Data RT & RW"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai Desa"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.door_front_door),
            title: Text("Keluar"),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                  (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
