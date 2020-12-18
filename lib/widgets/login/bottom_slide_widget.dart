import 'package:flutter/material.dart';
import 'package:practica_1/pages/login_section/login_page.dart';

class BottomSlideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyles = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]);

    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("Sign Up", style: textStyles),
          ),
          Expanded(child: Container()),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginPage.name);
            },
            child: Text("Log In", style: textStyles),
          ),
        ],
      ),
    );
  }
}
