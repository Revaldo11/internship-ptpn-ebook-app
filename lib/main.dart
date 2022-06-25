import 'package:ebook_ptpn_xi/pages/splash_page.dart';
import 'package:ebook_ptpn_xi/pages/started_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SplashPage(),
        '/started': (context) => StartedScreen(),
      },
    );
  }
}
