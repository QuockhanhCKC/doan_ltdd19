import 'package:flutter/material.dart';
import 'isloading.dart';

class loginfailPage extends StatefulWidget {
  const loginfailPage({Key? key}) : super(key: key);

  @override
  State<loginfailPage> createState() => _loginfailPageState();
}

class _loginfailPageState extends State<loginfailPage> {
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
      backgroundColor: Colors.white,
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
                Icons.sentiment_very_dissatisfied,
                color: Colors.cyan,
                size: 120,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Signln',
                style: TextStyle(
                    fontSize: 20,
                    //color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Your username and password don\'t math.\nPlease,try again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  //fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 300, 15, 15),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                child: Text(
                  'Try again',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
