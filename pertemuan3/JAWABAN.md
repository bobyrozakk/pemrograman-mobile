# 📘 Tugas Praktikum - Percabangan & Perulangan (Dart)


## 📝 Praktikum 1 : Menerapkan Control Flows ("if/else")

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
## Screenshot Output
![Langkah 2](langkah2.png)

**Langkah 3**

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
***Jawaban :***

Sudah pasti error karena variabel test bertipe String, sedangkan pernyataan if dalam Dart hanya menerima kondisi bertipe boolean (true/false). Oleh karena itu, String tidak dapat langsung digunakan sebagai kondisi dalam if.

yang benar ->
```dart
 String test2 = "true";

  if (test2 == "true") {
    print("Kebenaran");
  } else {
    print("Bukan Kebenaran");
  }
```

## 📝 Praktikum 2 : Menerapkan Perulangan "while" dan "do-while"


**Langkah 1**

Ketik atau salin kode program berikut ke dalam fungsi main()

```dart
while (counter < 33) {
  print(counter);
  counter++;
}
```
***Jawaban :***
## Screenshot Output
![Langkah 1](praktikum2.png)

**Langkah 2**

***Jawaban :***

Akan terjadi error karena variabel counter belum dideklarasikan dan belum diberi nilai awal.

yang benar ->
```dart
void main() {
  int counter = 0;

  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```
## Screenshot Output
![Langkah 2](praktikum2/langkah2.png)
Program akan mencetak angka dari 0 sampai 32.

Kenapa sampai 32?
Karena perulangan berjalan selama counter < 33. Saat counter sudah 33, kondisi menjadi false dan loop berhenti.

**Langkah 3**

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.

***Jawaban :***
## Screenshot Output
![Langkah 3](praktikum2/langkah3.png)
Jika diletakkan setelah while sebelumnya, maka:

- Setelah while pertama selesai, nilai counter adalah 33
- Lalu masuk ke do-while
- do-while akan mencetak dari 33 sampai 76

Kenapa? Karena struktur do-while:

- Blok kode dijalankan terlebih dahulu
- Baru kondisi diperiksa

Artinya, meskipun kondisi salah, kode tetap dijalankan minimal satu kali.