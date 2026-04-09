import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // 1. Tambahkan import ini

class MyLoadingCupertino extends StatelessWidget {
  const MyLoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Opsional: Menghilangkan banner debug
      home: Scaffold( // 2. Bungkus dengan Scaffold agar layout dan teks rapi
        body: Container(
          width: double.infinity, // Agar column berada di tengah (opsional)
          margin: const EdgeInsets.only(top: 50),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              CupertinoButton(
                child: const Text("Contoh button"),
                onPressed: () {
                  // Tambahkan aksi di sini
                },
              ),
              const SizedBox(height: 20), // Memberi jarak antara tombol dan loading
              const CupertinoActivityIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}