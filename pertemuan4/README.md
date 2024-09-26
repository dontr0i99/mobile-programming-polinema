## Praktikum Pemrograman Mobile Minggu 4

> Nama : M. Tryo Bagus Anugerah <br />
> NIM: 2241720053<br />
> Kelas : TI-3H <br />
> Absen : 14 <br />

### Praktikum 1: Eksperimen Tipe Data List

#### Langkah 1:
Ketik atau salin kode program berikut ke dalam void `main()`.
```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);
```

Hasil Praktikum:
> ![Kode-Prakikum-1-Langkah-1](docs/kodeP1L1.png)

#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

Output:
> ![Output-Praktikum-1-Langkah-2](docs/outputP1L2.png)
Tidak terjadi error dan program menampilkan 3 (panjang list) dan 2 (nilai elemen kedua sebelum diubah). Setelah diubah, menampilkan 1 (nilai elemen kedua setelah diubah). 

#### Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Hasil Praktikum:
> ![Kode-Prakikum-1-Langkah-3](docs/kodeP1L3.png)

Output:
> ![Output-Praktikum-1-Langkah-3](docs/outputP1L3.png)

### Praktikum 2: Eksperimen Tipe Data Set

#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi `main()`.
```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
```

Hasil Praktikum:
> ![Kode-Prakikum-2-Langkah-1](docs/kodeP2L1.png)

#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Output:
> ![Output-Prakikum-2-Langkah-2](docs/outputP2L2.png)
Tidak terjadi error. pada awal program mendeklarasikan sebuah set berisi elemen-elemen kimia halogen. Kemudian mencetak set `halogens`.

#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

Hasil Praktikum:
> ![Kode-Prakikum-2-Langkah-3](docs/kodeP2L3.png)

Output:
> ![Output-Praktikum-2-Langkah-3](docs/outputP2L3.png)

### Praktikum 3: Eksperimen Tipe Data Maps

#### Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi `main()`.
```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);
```

#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

#### Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
```dart
var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.