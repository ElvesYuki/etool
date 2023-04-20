import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LayoutTitleTop extends StatelessWidget {
  const LayoutTitleTop({Key? key}) : super(key: key);

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
              color: Colors.white70,
              fontSize: 40,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
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
