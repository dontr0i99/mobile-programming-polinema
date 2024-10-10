import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Premium Sugar', price: 50000, image: 'images/sugar.png', stock: 20, rating: 4.5),
    Item(name: 'Himalayan Pink Salt', price: 100000, image: 'images/salt.png', stock: 15, rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Menambahkan gradasi pada AppBar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.deepPurpleAccent], // Gradasi warna dari pink ke ungu
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Menambahkan ikon di kiri
            Row(
              children: const [
                Icon(Icons.shopping_bag, color: Colors.white), // Ikon keranjang belanja
                SizedBox(width: 8), // Jarak antara ikon dan teks
                Text(
                  'Shopping List',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily: 'Roboto', // Bisa disesuaikan dengan font custom jika ada
                    letterSpacing: 1.5, // Spasi antar huruf
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            // Menambahkan ikon keranjang di kanan
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                // Tambahkan fungsi untuk ikon keranjang
              },
            ),
          ],
        ),
        elevation: 10, // Memberikan shadow agar appbar lebih menonjol
        toolbarHeight: 70, // Tinggi AppBar untuk membuatnya terlihat lebih besar
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 0.75,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ItemCard(
                  item: item,
                  onTap: () {
                    // Menggunakan context.push dari GoRouter untuk navigasi ke halaman item dengan mengirimkan item sebagai extra
                    context.push('/item', extra: item);
                  },
                );
              },
            ),
          ),
          // Footer dengan Nama dan NIM
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                Text(
                  'Nama: M. Tryo Bagus Anugerah Putra',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'NIM: 2241720053',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
