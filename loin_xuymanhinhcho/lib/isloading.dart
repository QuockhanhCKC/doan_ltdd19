import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:loin_xuymanhinhcho/main.dart';

class isloadingPage extends StatefulWidget {
  const isloadingPage({Key? key}) : super(key: key);
  @override
  State<isloadingPage> createState() => _isloadingPageState();
}

class _isloadingPageState extends State<isloadingPage>
    with SingleTickerProviderStateMixin {
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
            Container(
              child: Center(
                  child: SpinKitFadingCircle(
                      color: Colors.brown,
                      size: 50,
                      controller: AnimationController(
                          duration: const Duration(milliseconds: 3000),
                          vsync: this))),
            ),
          ],
        ),
      ),
    );
  }
}
