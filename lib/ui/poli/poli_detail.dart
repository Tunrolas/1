import 'package:flutter/material.dart';
import 'poli_page.dart';
import '../../model/poli.dart';
import 'poli_update_form.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  // menggunakan this controller untuk mrnggunakan deskripsi  link google drive
  final _textController = TextEditingController();

  // store user text input to a variable
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //display text
              Expanded(
                child: Container(
                  child: Center (
                    child: const Text("Masukkan link berkas yang sudah di isi",
                    style: TextStyle(fontSize: 35),
                    ),
                  ),
                ),
              ),

              // Text input
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText:
                      'https://accounts.google.com/v3/signin/identifier?dsh=S-804726030%3A1687520556088723&continue=https%3A%2F%2Fdrive.google.com%2Fdrive%2Fmy-drive&followup=https%3A%2F%2Fdrive.google.com%2Fdrive%2Fmy-drive&ifkv=Af_xneGNdiYzI0_C4F-r7hYdQTGvHgMLFa4m654F9ELBsWWXF2jgcJGestPyzv9c4RKyebpedqiC&osid=1&passive=1209600&service=wise&flowName=GlifWebSignIn&flowEntry=ServiceLogin',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: () {
                        // clear hint text
                        _textController.clear();
                      },
                      icon: Icon(Icons.clear)),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.blue,
                child: const Text(
                  'post',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
