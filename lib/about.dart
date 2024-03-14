import 'package:flutter/material.dart';

class about extends StatefulWidget {
  @override
  State<about> createState() => _Firstpage();
}

class _Firstpage extends State<about> {
  int num1 = 1;
  int num2 = 2;
  int num3 = 3;
  void _calculate_m() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 213, 229, 242),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 213, 229, 242),
        title: Text('เลือกวิธีที่ต้องการเรียน'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          key: ValueKey('backButton'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Image.asset("image/p.png")]),
            Text(
              "w16-2",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 5, 5, 5),
                letterSpacing: 1.2,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
