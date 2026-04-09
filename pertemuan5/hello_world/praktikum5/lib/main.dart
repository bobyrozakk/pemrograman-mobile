import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/loading_cupertino.dart';
import 'basic_widgets/fab_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      // Ubah 'home' untuk memanggil MyLoadingCupertino
      home: const MyFabWidget(),
    );
  }
}

// Catatan: Kode MyHomePage dan _MyHomePageState tetap bisa dibiarkan di bawah sini 
// jika Anda masih ingin menyimpannya, atau bisa Anda hapus jika sudah tidak dipakai.