# 📘 Tugas Praktikum - Percabangan & Perulangan (Dart)


## 📝 Praktikum 1

**Langkah 1**

Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
String test = "test2";
if (test == "test1") {
   print("Test1");
} else If (test == "test2") {
   print("Test2");
} Else {
   print("Something else");
}

if (test == "test2") print("Test2 again");

```


**Langkah 2**

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

***Jawaban :***

## Screenshot Output
![Langkah 1](langkah1.png)

Akan terjadi ERROR (Syntax Error).
Dart case-sensitive (huruf besar/kecil berpengaruh).

Penulisan yang salah :
```dart
else If
Else
```

Penulisan yang benar :
```dart
else if
else
```

**Langkah 3**

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```