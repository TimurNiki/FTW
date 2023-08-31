import 'package:flutter/material.dart';
import 'package:fluttertestview/reset_password/rp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // useMaterial3: true,
          ),
      home: const ResetPasswordView(),
    );
  }
}
