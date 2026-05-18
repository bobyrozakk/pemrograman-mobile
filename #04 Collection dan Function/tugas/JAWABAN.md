# 1. Pengertian Functions dalam Dart

Function (fungsi) dalam bahasa Dart adalah sekumpulan kode yang digunakan untuk menjalankan suatu tugas tertentu. Fungsi membantu program menjadi lebih terstruktur, mudah dibaca, dan dapat digunakan kembali (reusable). Fungsi dapat menerima **parameter (input)** dan dapat mengembalikan **nilai (return value)**.

### Contoh Sintaks

```dart
int tambah(int a, int b) {
  return a + b;
}

void main() {
  int hasil = tambah(3, 4);
  print(hasil); // Output: 7
}
```

---

# 2. Jenis-Jenis Parameter dalam Functions

## a. Required Parameter (Parameter Wajib)

Parameter ini harus diisi saat fungsi dipanggil.

```dart
void sapa(String nama) {
  print("Halo $nama");
}

void main() {
  sapa("Budi");
}
```

---

## b. Optional Positional Parameter

Parameter opsional yang ditulis di dalam tanda kurung siku `[]`.

```dart
void tampilkan(String nama, [int? umur]) {
  print("Nama: $nama");
  print("Umur: $umur");
}

void main() {
  tampilkan("Budi");
  tampilkan("Budi", 20);
}
```

---

## c. Optional Named Parameter

Parameter opsional yang ditulis di dalam tanda kurung kurawal `{}`.

```dart
void tampilkan({String? nama, int? umur}) {
  print("Nama: $nama");
  print("Umur: $umur");
}

void main() {
  tampilkan(nama: "Budi", umur: 20);
}
```

---

## d. Default Parameter

Parameter yang memiliki nilai default jika tidak diisi.

```dart
void sapa({String nama = "Tamu"}) {
  print("Halo $nama");
}

void main() {
  sapa();
  sapa(nama: "Andi");
}
```

---

# 3. Functions sebagai First-Class Objects

Dalam Dart, function merupakan **first-class objects**, artinya fungsi dapat disimpan ke dalam variabel, dikirim sebagai parameter ke fungsi lain, dan dikembalikan dari fungsi lain.

## Contoh fungsi disimpan dalam variabel

```dart
void sapa(String nama) {
  print("Halo $nama");
}

void main() {
  var fungsi = sapa;
  fungsi("Budi");
}
```

## Contoh fungsi sebagai parameter

```dart
void jalankan(Function f) {
  f();
}

void halo() {
  print("Halo Dunia");
}

void main() {
  jalankan(halo);
}
```

---

# 4. Anonymous Functions

Anonymous Function adalah fungsi **tanpa nama** yang biasanya digunakan langsung sebagai parameter atau disimpan dalam variabel.

## Contoh

```dart
void main() {
  var daftar = ["A", "B", "C"];

  daftar.forEach((item) {
    print(item);
  });
}
```

Contoh lain:

```dart
void main() {
  var tambah = (int a, int b) {
    return a + b;
  };

  print(tambah(3, 4));
}
```

---

# 5. Perbedaan Lexical Scope dan Lexical Closures

## Lexical Scope

Lexical scope adalah aturan yang menentukan variabel mana yang dapat diakses berdasarkan posisi kode dalam program.

```dart
void main() {
  var nama = "Budi";

  void cetak() {
    print(nama);
  }

  cetak();
}
```

Fungsi `cetak()` dapat mengakses variabel `nama` karena berada dalam lingkup yang sama.

---

## Lexical Closures

Closure adalah fungsi yang dapat mengakses variabel dari scope luar meskipun fungsi tersebut dijalankan di luar scope tersebut.

```dart
Function buatCounter() {
  int counter = 0;

  return () {
    counter++;
    print(counter);
  };
}

void main() {
  var hitung = buatCounter();
  hitung(); // 1
  hitung(); // 2
}
```

Variabel `counter` tetap tersimpan karena digunakan oleh fungsi yang dikembalikan.

---

# 6. Return Multiple Value dalam Functions

Dart tidak secara langsung mendukung pengembalian banyak nilai sekaligus, tetapi dapat dilakukan dengan beberapa cara.

## a. Menggunakan List

```dart
List<int> hitung(int a, int b) {
  return [a + b, a * b];
}

void main() {
  var hasil = hitung(3, 4);
  print("Jumlah: ${hasil[0]}");
  print("Perkalian: ${hasil[1]}");
}
```

---

## b. Menggunakan Map

```dart
Map<String, int> hitung(int a, int b) {
  return {
    "jumlah": a + b,
    "kali": a * b
  };
}

void main() {
  var hasil = hitung(3, 4);
  print(hasil["jumlah"]);
  print(hasil["kali"]);
}
```

---

## c. Menggunakan Record (Dart versi terbaru)

```dart
(int, int) hitung(int a, int b) {
  return (a + b, a * b);
}

void main() {
  var hasil = hitung(3, 4);
  print(hasil.$1);
  print(hasil.$2);
}
```

Atau menggunakan destructuring:

```dart
(int jumlah, int kali) hitung(int a, int b) {
  return (a + b, a * b);
}

void main() {
  var (jumlah, kali) = hitung(3, 4);
  print(jumlah);
  print(kali);
}
```