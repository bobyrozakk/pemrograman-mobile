import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyLoadingCupertino extends StatelessWidget {
  const MyLoadingCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Langsung return Scaffold, tidak perlu MaterialApp lagi
    return Scaffold(
      body: Container(
        width: double.infinity,
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
            const SizedBox(height: 20),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );
  }
}
