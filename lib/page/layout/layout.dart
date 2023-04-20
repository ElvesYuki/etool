import 'package:etool/page/layout/layout_bar_left.dart';
import 'package:etool/page/layout/layout_title_top.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LayoutBarLeft(),
        Expanded(
          child: Column(
            children: [
              LayoutTitleTop(),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    MaterialButton(
                      color: Colors.blue,
                      textColor: Colors.blue,
                      onPressed: null,
                      child: Text('按钮'),
                    ),
                    Expanded(
                      child: Card(
                        shadowColor: Colors.red,
                        child: Text('添加功2能操作区'),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shadowColor: Colors.cyanAccent,
                child: Text('内容操作区'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
