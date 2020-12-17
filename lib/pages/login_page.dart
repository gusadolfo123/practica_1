import 'package:flutter/material.dart';
import 'package:practica_1/pages/page_1.dart';
import 'package:practica_1/pages/page_2.dart';
import 'package:practica_1/widgets/bottom_slide_widget.dart';

class LoginPage extends StatefulWidget {
  static final name = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PageController _pageController = PageController();
  int _page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                this._page = value;
                setState(() {});
                print("login page " + value.toString());
              },
              controller: _pageController,
              children: [
                Center(
                  child: Text("Page 1,"),
                ),
                Page1(),
                Page2(),
              ],
            ),
            Column(
              children: [
                Expanded(child: Container()),
                Container(
                  padding: EdgeInsets.all(36),
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
              ],
            ),
            Column(
              children: [
                Expanded(child: Container()),
                BottomSlideWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color setColor(int currentPage) {
    if (this._page == currentPage) return Colors.blue[400];
    return Colors.grey[400];
  }
}
