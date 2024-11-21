# Praktikum Pemrograman Mobile Minggu 11 | Pemrograman Asynchronous

> Nama : M. Tryo Bagus Anugerah <br />
> NIM: 2241720053<br />
> Kelas : TI-3H <br />
> Absen : 14 <br />
<hr>

## Praktikum 1: Mengunduh Data dari Web Service (API)

### Soal 1

> <img src="../../docs/soal-1.gif" alt="Output-Soal-1"/>

### Soal 2

> <img src="../../docs/soal-2.png" alt="Output-Soal-2"/>

### Soal 3

> <img src="../../docs/soal-3.png" alt="Output-Soal-3"/>

- Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!
    > - `Substring` berguna membatasi panjang string hingga 450 karakter pertama untuk mencegah data terlalu panjang.<br>
    > - `CatchError` berguna menangkap error dari proses asinkron agar aplikasi tetap berjalan dengan memberikan pesan error yang sesuai.

## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Soal 4

> <img src="../../docs/soal-4.png" alt="Output-Soal-4"/>

- Jelaskan maksud kode langkah 1 dan 2 tersebut!
    > - **Langkah 1** mendefinisikan fungsi asinkron untuk menghasilkan nilai integer setelah simulasi delay selama 3 detik.
    > - **Langkah 2** menghitung total secara berurutan dari ketiga fungsi asinkron, lalu memperbarui UI dengan hasil akhir.

## Praktikum 3: Menggunakan Completer di Future

### Soal 5

> <img src="../../docs/soal-5.png" alt="Output-Soal-5"/>

- Jelaskan maksud kode langkah 2 tersebut!
    > - Pada langkah 2 menambahkan kode yang menggunakan `Completer` untuk mengontrol penyelesaian sebuah `Future` secara manual. Fungsi `getNumber()` mengembalikan sebuah `Future`, yang diselesaikan oleh fungsi `calculate()` setelah 5 detik dengan nilai `42`.

### Soal 6

> <img src="../../docs/soal-6.gif" alt="Output-Soal-6"/>

- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
    > - **Langkah 2** hanya menangani keberhasilan tanpa memperhatikan kemungkinan error, sehingga tidak robust. **Langkah 5-6** menambahkan penanganan error dengan blok `try-catch` dan `.catchError`, sehingga lebih tangguh dan dapat memberikan umpan balik ke UI untuk kasus sukses maupun error.

### Soal 7

> <img src="../../docs/soal-7.gif" alt="Output-Soal-7"/>

### Soal 8

- Jelaskan maksud perbedaan kode langkah 1 dan 4!
    > - Langkah 1 (FutureGroup) Memberikan kontrol lebih besar atas `Future` yang ditambahkan, karena dapat menambahkan `Future` secara dinamis sebelum memanggil `close()`.
    > - Langkah 4 (Future.wait) Pendekatan yang lebih sederhana dan langsung untuk menjalankan kumpulan `Future` secara bersamaan.