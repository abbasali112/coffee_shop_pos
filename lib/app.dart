import 'package:flutter/material.dart';
import 'ui/layout/pos_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop POS',
      home: const PosLayout(),
    );
  }
}
