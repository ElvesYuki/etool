import 'package:etool/page/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ETool',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      debugShowCheckedModeBanner: false,
      home: ConstrainedBox(
        constraints: const BoxConstraints(),
        child: Container(
          color: Colors.white,
          child: const LayoutPage(),
        ),
      ),
    );
  }
}
