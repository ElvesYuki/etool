import 'package:etool/page/layout/layout.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ETool',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: Container(
          color: Colors.black45,
          child: const LayoutPage(),
        ),
      ),
    );
  }
}
