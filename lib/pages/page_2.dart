import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.grey[900],
      width: size.width,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                height: size.height * 0.3,
                margin: EdgeInsets.symmetric(
                    vertical: 120, horizontal: size.width * 0.1),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                height: size.height * 0.3,
                margin: EdgeInsets.symmetric(
                    vertical: 140, horizontal: size.width * 0.15),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                alignment: Alignment.center,
                height: size.height * 0.3,
                margin: EdgeInsets.symmetric(
                    vertical: 160, horizontal: size.width * 0.2),
              ),
            ],
          ),
          Text("asd"),
        ],
      ),
    );
  }
}
