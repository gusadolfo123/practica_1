import 'package:flutter/material.dart';

class BottomSlideWidget extends StatefulWidget {
  final PageController controller;

  BottomSlideWidget({Key key, @required this.controller}) : super(key: key);

  @override
  _BottomSlideWidgetState createState() => _BottomSlideWidgetState(controller);
}

class _BottomSlideWidgetState extends State<BottomSlideWidget> {
  int page = 1;
  PageController pageController;

  _BottomSlideWidgetState(this.pageController);

  @override
  Widget build(BuildContext context) {
    final textStyles = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]);

    return Container(
      padding: EdgeInsets.all(40),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              print("pagina 0 " + pageController.hasClients.toString());
              if (pageController.hasClients) {
                pageController.animateToPage(0,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
                this.page = 0;
                setState(() {});
              }
            },
            child: Text("Sign Up", style: textStyles),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 12, color: setColor(0)),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 12, color: setColor(1)),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 12, color: setColor(2)),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              print("pagina 2 " + pageController.hasClients.toString());
              if (pageController.hasClients) {
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
                this.page = 2;
                setState(() {});
              }
            },
            child: Text("Log In", style: textStyles),
          ),
        ],
      ),
    );
  }

  Color setColor(int currentPage) {
    if (this.page == currentPage) return Colors.blue[400];
    return Colors.grey[400];
  }
}
