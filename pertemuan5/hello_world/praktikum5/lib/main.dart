import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Menggunakan super.key sesuai standar Flutter terbaru
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        // Menambahkan SafeArea agar konten tidak tertutup status bar
        body: const SafeArea(child: MyLayout()),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      
      
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nama',
        ),
      ),

      // 
      // child: ElevatedButton(
      //   child: const Text('Show alert'),
      //   onPressed: () {
      //     showAlertDialog(context);
      //   },
      // ),
      // 
    );
  }
}

// 
// showAlertDialog(BuildContext context) {
//   // Set up the button
//   Widget okButton = TextButton(
//     child: const Text("OK"),
//     onPressed: () {
//       Navigator.pop(context); // Berfungsi untuk menutup dialog
//     },
//   );

//   // Set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: const Text("My title"),
//     content: const Text("This is my message."),
//     actions: [okButton],
//   );

//   // Show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
// */