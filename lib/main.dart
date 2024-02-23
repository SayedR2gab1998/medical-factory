import 'package:flutter/material.dart';
import 'package:medicalfacory/home/main_Page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'مصنع الأجهزة الطبية ق.م',
      debugShowCheckedModeBanner: false,
      home: MainPageScreen(),
    );
  }
}