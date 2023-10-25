import 'package:flutter/material.dart';
import 'package:videocall_zego/homepage.dart';
import 'package:videocall_zego/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LoginPage(),
        "home": (context) => const HomePage(),
      },
      initialRoute: "login",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
