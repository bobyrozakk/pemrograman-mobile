void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 3
  var angka = (10, 20);
  print("Sebelum ditukar: $angka");

  var hasil = tukar(angka);
  print("Sesudah ditukar: $hasil");

  // Langkah 4
  // Record type annotation in a variable declaration:

  (String, int) mahasiswa;

  mahasiswa = ('Boby Rozak Saputra', 2341760162);

  print(mahasiswa);

  // Langkah 5
  var mahasiswa2 = ('Boby Rozak Saputra', a: 2341760162, b: true, 'SIB');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
