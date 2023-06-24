import 'package:flutter/material.dart';
import '../../model/pasien.dart';
import 'pasien_detail.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({Key? key}) : super(key: key);
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _normPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _ttlPasienCtrl = TextEditingController();
  final _nohpPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNomorRm(),
              _fieldNamaPasien(),
              _fieldTtl(),
              _fieldNohp(),
              _fieldAlamat(),
              SizedBox(
                height: 20,
              ),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNomorRm() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor RM"),
      controller: _normPasienCtrl,
    );
  }

  _fieldNamaPasien() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pasien"),
      controller: _namaPasienCtrl,
    );
  }

  _fieldTtl() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tempat Tanggal Lahir"),
      controller: _ttlPasienCtrl,
    );
  }

  _fieldNohp() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nomor Handphone"),
      controller: _nohpPasienCtrl,
    );
  }

  _fieldAlamat() {
    return TextField(
      decoration: const InputDecoration(labelText: "Alamat Pasien"),
      controller: _alamatPasienCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pasien pasien = new Pasien(
            nama: _namaPasienCtrl.text,
            nomor_rm: _normPasienCtrl.text,
            ttl: _ttlPasienCtrl.text,
            telp: _nohpPasienCtrl.text,
            alamat: _alamatPasienCtrl.text,
          );
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PasienDetail(pasien: pasien)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
