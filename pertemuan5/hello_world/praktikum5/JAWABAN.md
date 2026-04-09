# 📘 Tugas Praktikum - Aplikasi Pertama & Widget Dasar Flutter

## 📝 Praktikum 1 : Membuat Project Flutter Baru

![](assets/Praktikum_1.png)

## 📝 Praktikum 2 : Menghubungkan Perangkat Android atau Emulator

![](assets/Praktikum_2.png)

## 📝 Praktikum 3 : Membuat Repository GitHub dan Laporan Praktikum

![](assets/Praktikum_3.png)

## 📝 Praktikum 4 : Menerapkan Widget Dasar

**Langkah 1 : Text Widget**

Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart

``` dart
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Fulan, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center);
  }
}
```

***Jawaban :***
![](assets/Praktikum_4.png)

**Langkah 2 : Image Widget**

Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

```dart
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo_polinema.jpg")
    );
  }
}
```

***Jawaban :***

![](assets/langkah_02.jpeg)