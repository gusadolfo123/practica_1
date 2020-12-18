import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey[900],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey[600], width: 3),
                  ),
                  height: size.height * 0.5,
                  margin: EdgeInsets.only(
                    top: size.height * 0.13,
                    left: size.width * 0.29,
                    right: size.width * 0.29,
                  ),
                  child: Column(
                    children: [
                      Expanded(child: Container()),
                      Icon(Icons.circle, color: Colors.grey[700], size: 28),
                      SizedBox(height: 10)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: size.height * 0.2,
                  margin: EdgeInsets.only(
                    top: size.height * 0.36,
                    left: size.width * 0.245,
                    right: size.width * 0.245,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: size.height * 0.25,
                  margin: EdgeInsets.only(
                    top: size.height * 0.28,
                    left: size.width * 0.2,
                    right: size.width * 0.2,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  height: size.height * 0.3,
                  margin: EdgeInsets.only(
                    top: size.height * 0.2,
                    left: size.width * 0.15,
                    right: size.width * 0.15,
                  ),
                ),
              ],
            ),
            Text(
              "prueba",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
