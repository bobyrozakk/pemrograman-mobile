import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Menambahkan AppBar agar tampilan tidak terlalu kosong (Opsional)
        appBar: AppBar(
          title: const Text('Contoh FAB'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan aksi kamu di sini!
            print("Tombol ditekan!");
          },
          backgroundColor: Colors.pink, // Taruh properti lain di atas...
          child: const Icon(Icons.thumb_up), // ...dan letakkan 'child' di paling bawah
        ),
      ),
    );
  }
}