import 'package:etool/page/controller/GetxController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LayoutTitleTop extends StatelessWidget {
  final MyController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Text(
            'Redis Client',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: GetBuilder<MyController>(
            builder: (c) => Text(
              '${c.count.obs.value}',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black45,
                fontSize: 24,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        Expanded(
          child: Card(),
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: Container(
              padding: EdgeInsets.all(2),
              child: SvgPicture.asset('image/logo/Redis-Logo.wine.svg')),
        ),
      ],
    );
  }
}
