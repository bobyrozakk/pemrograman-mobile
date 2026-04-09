import 'package:flutter/material.dart';

class MyFabWidget extends StatelessWidget {
  const MyFabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Langsung return Scaffold, hilangkan MaterialApp
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Kode di sini akan berjalan saat tombol diklik
          print("Tombol jempol ditekan!");
        },
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
