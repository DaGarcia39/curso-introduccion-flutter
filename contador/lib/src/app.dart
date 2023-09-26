import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';
// import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: ContadorPage(),
    );
  }
}
