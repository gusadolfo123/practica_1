import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 100,
          child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 110,
          right: 175,
          child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
        ),
        Positioned(
          right: 75,
          top: 85,
          child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: 150,
          left: 200,
          child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
        ),
        Positioned(
          bottom: 120,
          left: 60,
          child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),
        ),
        child,
      ],
    );
  }
}
