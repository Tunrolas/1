import 'package:flutter/material.dart';
import '/model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiUpdateForm({Key? key, required this.pegawai}) : super(key: key);
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaPegawaiCtrl = TextEditingController();
  final _nipPegawaiCtrl = TextEditingController();
  final _ttlPegawaiCtrl = TextEditingController();
  final _telpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passwordPegawaiCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaPegawaiCtrl.text = widget.pegawai.nama;
      _nipPegawaiCtrl.text = widget.pegawai.nip;
      _ttlPegawaiCtrl.text = widget.pegawai.ttl;
      _telpPegawaiCtrl.text = widget.pegawai.telp;
      _emailPegawaiCtrl.text = widget.pegawai.email;
      _passwordPegawaiCtrl.text = widget.pegawai.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaPegawai(),
              _fieldNipPegawai(),
              _fieldTtlPegawai(),
              _fieldTelpPegawai(),
              _fieldEmailPegawai(),
              _fieldPasswordPegawai(),
              _tombolSimpan(),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Pegawai"),
    );
  }

  _fieldNipPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIP Pegawai"),
    );
  }

  _fieldTtlPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tempat Tanggal Lahir"),
    );
  }

  _fieldTelpPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "No Telephone"),
    );
  }

  _fieldEmailPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "E-mail"),
    );
  }

  _fieldPasswordPegawai() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password"),
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai pegawai = new Pegawai(
              nama: _namaPegawaiCtrl.text,
              nip: _nipPegawaiCtrl.text,
              ttl: _ttlPegawaiCtrl.text,
              telp: _telpPegawaiCtrl.text,
              email: _emailPegawaiCtrl.text,
              password: _passwordPegawaiCtrl.text);
          Navigator.pop(context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: pegawai)));
        },
        child: const Text("Simpan Perubahan"));
  }
}
