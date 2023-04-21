import 'package:flutter/material.dart';

class LayoutBarLeft extends StatefulWidget {
  const LayoutBarLeft({Key? key}) : super(key: key);

  @override
  State<LayoutBarLeft> createState() => _LayoutBarLeftState();
}

class _LayoutBarLeftState extends State<LayoutBarLeft> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 50, maxWidth: 50),
      child: Container(
          color: const Color.fromARGB(32, 32, 32, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                shadowColor: Colors.cyanAccent,
                child: Icon(Icons.flutter_dash_outlined),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Redis',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ConstrainedBox(
                constraints:
                    const BoxConstraints(minHeight: 250, maxHeight: 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Icon(
                        Icons.help_center,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      child: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
