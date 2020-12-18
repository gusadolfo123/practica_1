import 'package:flutter/material.dart';
import 'package:practica_1/pages/login_section/page_0.dart';
import 'package:practica_1/pages/login_section/page_1.dart';
import 'package:practica_1/pages/login_section/page_2.dart';
import 'package:practica_1/widgets/login/bottom_slide_widget.dart';

class MainLoginPage extends StatefulWidget {
  static final name = "main_login_page";

  @override
  _MainLoginPageState createState() => _MainLoginPageState();
}

class _MainLoginPageState extends State<MainLoginPage> {
  PageController _pageController = PageController(initialPage: 1);
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
                Page0(),
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
