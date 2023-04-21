import 'package:etool/page/controller/GetxController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutContent extends StatefulWidget {
  const LayoutContent({Key? key, this.count = 0}) : super(key: key);

  final int count;

  @override
  State<LayoutContent> createState() => _LayoutContentState();
}

class _LayoutContentState extends State<LayoutContent> {
  int _counter = 0;

  void countAdd() {
    MyController.to.increment();
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  void initState() {
    _counter = widget.count;
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.blue,
                onPressed: null,
                child: Text('按钮'),
              ),
              Text('$_counter'),
              Text('${MyController.to.count}'),
              OutlinedButton(
                onPressed: () => countAdd(),
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
          Row(
            children: [
              Card(
                shadowColor: Colors.cyanAccent,
                child: Text('内容操作区'),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(LayoutContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget ");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
