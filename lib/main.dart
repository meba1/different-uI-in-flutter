import 'package:flutter/material.dart';
import 'package:tesring/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trying different things on flutter',
      
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 32, 13, 65)),
        useMaterial3: true,
      ),
      home:  const Loginpage(),
    );
  }
}

