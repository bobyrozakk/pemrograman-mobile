import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // Menggunakan super.key sesuai standar Flutter terbaru
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable/State untuk menyimpan tanggal yang dipilih (default: tanggal hari ini)
  DateTime selectedDate = DateTime.now();

  // Fungsi untuk memunculkan kalender bawaan Flutter
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8), // Batas tanggal paling lama
      lastDate: DateTime(2101), // Batas tanggal paling baru
    );

    // Jika user memilih tanggal (tidak batal) dan tanggalnya berbeda
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked; // Memperbarui state tanggal
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Menampilkan tanggal yang sudah diformat (hanya YYYY-MM-DD)
            Text(
              "${selectedDate.toLocal()}".split(' ')[0],
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _selectDate(context); // Memanggil fungsi kalender

                // Menggunakan debugPrint sebagai ganti print untuk menghindari warning
                debugPrint(
                  'Total penjumlahan hari+bulan+tahun: ${selectedDate.day + selectedDate.month + selectedDate.year}',
                );
              },
              child: const Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}


/* =========================================================
                      KODE LANGKAH 4 & 5 
   =========================================================

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      // TextField dari Langkah 5
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Nama',
        ),
      ),
      
      // ElevatedButton dari Langkah 4
      // child: ElevatedButton(
      //  child: const Text('Show alert'),
      //  onPressed: () {
      //    showAlertDialog(context);
      //  },
      // ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context); 
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [okButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

========================================================= */