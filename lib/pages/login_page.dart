import 'package:flutter/material.dart';
import 'package:practica_1/widgets/bottom_slide_widget.dart';

class LoginPage extends StatefulWidget {
  static final name = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                print("login page " + value.toString());
              },
              controller: _pageController,
              children: [
                Center(
                  child: Text("Page 1,"),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("assets/img/logo.png")),
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Container(
                        width: 220,
                        child: Text(
                          "lorem ipsum dolor sit amet, consectetur adiscimp elit, set do el ouiso tempor",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text("Page 3,"),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(child: Container()),
                BottomSlideWidget(controller: _pageController),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
