# Praktikum Pemrograman Mobile Minggu 12 | Lanjutan State Management dengan Streams

> Nama : M. Tryo Bagus Anugerah <br />
> NIM: 2241720053<br />
> Kelas : TI-3H <br />
> Absen : 14 <br />
<hr>

## Praktikum 1: Dart Streams

### Soal 1

> <img src="docs/soal-1.png" alt="Output-Soal-1"/>

### Soal 2

> <img src="docs/soal-2.png" alt="Output-Soal-2"/>

### Soal 3

```dart
yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
```

- Jelaskan fungsi keyword yield* pada kode tersebut!
    > - Keyword `yield*` Digunakan untuk menghasilkan semua elemen dari stream atau iterable lain. Dalam kasus ini, `yield*` mengalirkan elemen yang dihasilkan oleh `Stream.periodic`.
- Apa maksud isi perintah kode tersebut?
    > - `Stream.periodic` menghasilkan elemen secara periodik setiap 1 detik.<br>
    > - Fungsi `(int t)` menghitung indeks warna dengan `t % colors.length` sehingga warna dari daftar `colors` dipilih secara bergantian.<br>
    > - Hasilnya adalah stream yang memancarkan warna dari `colors` secara berulang setiap detik.

### Soal 4

> <img src="docs/soal-4.gif" alt="Output-Soal-4"/>

### Soal 5

> <img src="docs/soal-5.gif" alt="Output-Soal-5"/><br>

- Jelaskan perbedaan menggunakan `listen` dan `await for` (langkah 9) !
    > - `listen` digunakan untuk mendengarkan stream secara asinkron dengan callback yang dipanggil setiap kali data baru diterima. Penggunaan `listen` tidak memblokir eksekusi kode setelahnya, memungkinkan aplikasi untuk terus berjalan. Ini sangat cocok untuk menangani stream yang bersifat broadcast atau ketika berbagai event perlu diproses secara reaktif, seperti data baru, error, atau selesai.<br>

    > - `await for` digunakan untuk secara berurutan mengambil data dari stream dalam bentuk loop asinkron. Penggunaan `await for` akan memblokir eksekusi kode di dalam scope hingga stream selesai, dan cocok digunakan untuk stream yang hanya memiliki satu subscriber. Struktur ini memungkinkan pemrosesan data dalam urutan yang diterima secara linier.

## Praktikum 2: Stream controllers dan sinks

### Soal 6

> <img src="docs/soal-6.gif" alt="Output-Soal-6"/><br>

- Jelaskan maksud kode langkah 8 dan 10 tersebut!
    > - Fungsi `addRandomNumber()` menghasilkan angka acak antara 0-9 dan mengirimkannya ke stream `numberStream` menggunakan `addNumberToSink()`. Di dalam `initState()`, objek `numberStream` diinisialisasi dan stream yang ada pada `numberStreamController` didengarkan. Setiap kali ada data baru, nilai `lastNumber` diperbarui dengan memanggil `setState()` agar tampilan UI diperbarui. Pada metode `dispose()`, `numberStreamController` ditutup untuk mencegah kebocoran memori ketika widget dihapus.

### Soal 7

> <img src="docs/soal-7.gif" alt="Output-Soal-7"/><br>

- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
    > - Fungsi `addError()` menambahkan error ke stream, yang kemudian ditangani oleh `stream.listen()`. Ketika terjadi error, callback `.onError()` akan mengubah nilai `lastNumber` menjadi `-1`. Panggilan `numberStream.addError()` memicu error dalam stream yang ditangani oleh listener.

## Praktikum 3: Injeksi data ke streams

### Soal 8

> <img src="docs/soal-8.gif" alt="Output-Soal-8"/><br>

- Jelaskan maksud kode langkah 1-3 tersebut!
    > - Kode tersebut membuat `StreamTransformer` untuk memodifikasi data yang diterima dari stream. Setiap nilai yang diterima akan dikalikan dengan 10, sedangkan error akan menghasilkan nilai `-1`. Transformer diterapkan pada stream, dan hasilnya didengarkan untuk memperbarui `lastNumber`. Jika terjadi error, `lastNumber` akan diubah menjadi `-1`.

## Praktikum 4: Subscribe ke stream events

### Soal 9

> <img src="docs/soal-9.gif" alt="Output-Soal-9"/><br>

- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
    > - Kode tersebut mendengarkan stream untuk memperbarui nilai `lastNumber` setiap kali data baru diterima. Jika terjadi error, nilai `lastNumber` diubah menjadi `-1`, dan ketika stream selesai, mencetak pesan 'onDone was called'. Pada metode `dispose()`, langganan stream dibatalkan dengan `subscription.cancel()` untuk mencegah kebocoran memori. Fungsi `addRandomNumber()` menghasilkan angka acak dan menambahkannya ke stream jika stream masih terbuka. Jika stream sudah ditutup, nilai `lastNumber` akan diubah menjadi `-1`.

## Praktikum 5: Multiple stream subscriptions

### Soal 10

> <img src="docs/soal-10.png" alt="Output-Soal-10"/><br>

- Jelaskan mengapa error itu bisa terjadi ?
    > - Error `StateError (Bad state: Stream has already been listened to.)` muncul karena stream yang digunakan adalah stream *single-subscription*, yang hanya dapat memiliki satu listener. Dalam kode tersebut, stream yang sama didengarkan dua kali, yaitu dengan `subscription` dan `subscription2`, yang menyebabkan error.

### Soal 11

> <img src="docs/soal-11.gif" alt="Output-Soal-11"/><br>

- Jelaskan mengapa hal itu bisa terjadi ?
    > - Hal itu terjadi karena stream diubah menjadi broadcast stream menggunakan `asBroadcastStream()`, yang memungkinkan stream didengarkan lebih dari satu kali. Ketika tombol "New Random Number" ditekan, stream mengirimkan nilai yang diterima oleh dua listener (`subscription` dan `subscription2`), sehingga setiap angka yang ditambahkan ke stream akan diproses dua kali. Akibatnya, teks yang ditampilkan bertambah dua kali setiap kali tombol ditekan.

## Praktikum 6: StreamBuilder

### Soal 12

> <img src="docs/soal-12.gif" alt="Output-Soal-12"/><br>

- Jelaskan maksud kode pada langkah 3 dan 7 !
    > - Kode tersebut membuat stream yang menghasilkan angka acak setiap detik menggunakan `Stream.periodic()`, yang kemudian ditangani oleh `StreamBuilder`. Di dalam `StreamBuilder`, stream dari numberStream dihubungkan untuk menampilkan nilai yang diterima pada UI. `initialData: 0` digunakan untuk menampilkan nilai awal 0 saat stream pertama kali dibangun. Jika stream memiliki data, angka yang diterima akan ditampilkan di layar. Jika terjadi error, akan mencetak 'Error!', dan jika tidak ada data, tidak ada tampilan yang ditampilkan. Dengan demikian, aplikasi ini memperbarui dan menampilkan angka acak setiap detik.

## Praktikum 7: BLoC Pattern

### Soal 13

> <img src="docs/soal-13.gif" alt="Output-Soal-13"/><br>

- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?
    > - Praktikum ini menunjukkan penerapan pola *BLoC (Business Logic Component)* dalam aplikasi Flutter untuk memisahkan logika bisnis dari antarmuka pengguna. Pada praktikum ini, `RandomNumberBloc` berfungsi untuk menangani logika bisnis dengan menghasilkan angka acak menggunakan `StreamController`. Di dalam `RandomNumberBloc`, event diterima melalui `StreamController<void>` yang memicu penghasilan angka acak, sementara angka yang dihasilkan dikirimkan melalui `StreamController<int>` ke stream `randomNumber`. Pada bagian antarmuka, `StreamBuilder` digunakan untuk mendengarkan stream `randomNumber` dan memperbarui tampilan setiap kali angka acak baru diterima. Floating action button pada UI berfungsi untuk memicu event pada BLoC, yang kemudian menghasilkan angka acak baru. Konsep BLoC dalam praktikum ini terlihat jelas dalam pemisahan logika pengolahan angka acak dan tampilan, di mana BLoC bertanggung jawab penuh atas pengelolaan data dan aliran event, sementara UI hanya menangani pembaruan tampilan berdasarkan data yang diterima dari stream.