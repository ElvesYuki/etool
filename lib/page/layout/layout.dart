import 'package:etool/page/layout/layout_bar_left.dart';
import 'package:etool/page/layout/layout_title_top.dart';
import 'package:etool/page/layout/layout_content.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/GetxController.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    final MyController c = Get.put(MyController());
    return Row(
      children: [
        LayoutBarLeft(),
        Expanded(
          child: Column(
            children: [
              LayoutTitleTop(),
              LayoutContent(),
            ],
          ),
        ),
      ],
    );
  }
}
