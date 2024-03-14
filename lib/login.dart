import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);
  @override
  State<login> createState() => _SecondState();
}


class _SecondState extends State<login> {
  void _calculate_m() {}
TextEditingController email =TextEditingController();
TextEditingController password =TextEditingController();

void login(emai,passwo){
  if(emai=="mark" && passwo =="1234" ){
    Navigator.pushNamed(context, '/first');
  }
}
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
          children: [
            Row(
              children: <Widget>[SizedBox(height: 100,width: 400,child :TextFormField(
                    decoration: InputDecoration(
                    border: OutlineInputBorder(),
                     hintText: 'Enter a email',
                      ),
                  key: ValueKey('email'),
                  controller :email,
                ),),
              ],
            ),Row(
            children: [SizedBox(height: 100,width: 400,child :TextFormField(
                    decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                     hintText: 'Enter a password',
                      ),
                  key: ValueKey('password'),
                  controller :password,
                ),),],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [FloatingActionButton.extended(
                  key: ValueKey('login'),
                  onPressed: () {
                      login(email.text ,password.text );
                  },
                  label: const Text("login"),
                ),],)
          ],
        ),
      ),
    );
  }
}
