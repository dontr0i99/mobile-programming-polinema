import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengatur GoRouter dengan rute untuk halaman utama dan item detail
    final GoRouter _router = GoRouter(
      routes: [
        // Route untuk halaman HomePage
        GoRoute(
          path: '/',
          builder: (context, state) => HomePage(),
        ),
        // Route untuk halaman ItemPage
        GoRoute(
          path: '/item',
          builder: (context, state) {
            // Mengambil item yang dipassing melalui parameter extra
            final item = state.extra as Item;
            return ItemPage(item: item);
          },
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Tryo | 2241720053',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router, // Konfigurasi router menggunakan GoRouter
    );
  }
}
