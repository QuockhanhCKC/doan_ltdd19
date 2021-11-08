import 'package:flutter/material.dart';
import 'isloading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool kiemtraLogin() {
    if (email.text == password.text) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.drafts,
                color: Colors.cyan,
                size: 120,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Signln',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Text(
                'Speak,friend,and enter',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: email,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: password,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                color: Colors.black,
                onPressed: () {
                  kiemtraLogin()
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => isloadingPage()),
                        )
                      : showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text('nhap thong tin sai'),
                            );
                          });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
