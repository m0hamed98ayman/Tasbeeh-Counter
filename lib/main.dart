import 'package:flutter/material.dart';
import 'package:tasbeeh_counter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage': (context) =>const HomePage(),
      },
      initialRoute: 'HomePage',
      debugShowCheckedModeBanner: false,
      home:const HomePage()
    );
  }
}
