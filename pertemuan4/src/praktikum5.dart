void main() {
  // Langkah 1
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  // Langkah 3
  (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
  }

  var record1 = (1, 3);
  var reversedRecord = tukar(record1);
  print(reversedRecord);

  // Langkah 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ("M. Tryo Bagus Anugerah Putra", 2241720053);
  print(mahasiswa);

  // Langkah 5
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  mahasiswa2 = (mahasiswa2.$1, a: mahasiswa2.a, b: mahasiswa2.b, "M. Tryo Bagus Anugerah Putra");

  print(mahasiswa2);
}