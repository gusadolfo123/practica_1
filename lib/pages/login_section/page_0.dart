import 'package:flutter/material.dart';

class Page0 extends StatelessWidget {
  const Page0({Key key}) : super(key: key);

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
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Design",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.w900),
                            ),
                            Icon(Icons.favorite, color: Colors.grey[600]),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Mobile Application Designer",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Remote |",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Full Time |",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "46k Yr",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 36,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                  Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 36,
                                      color: Colors.grey[600],
                                    ),
                                    left: 16,
                                  ),
                                  Positioned(
                                    child: Icon(
                                      Icons.circle,
                                      size: 36,
                                      color: Colors.grey[600],
                                    ),
                                    left: 32,
                                  ),
                                ],
                              ),
                            ),
                            FlatButton(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "APPLY",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
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
          ],
        ),
      ),
    );
  }
}
