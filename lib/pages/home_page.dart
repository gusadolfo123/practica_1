import 'package:flutter/material.dart';
import 'package:practica_1/pages/global_settings_page.dart';
import 'package:practica_1/pages/login_page.dart';

class Item {
  String name;
  String route;
  Item({this.name, this.route});
}

class HomePage extends StatelessWidget {
  static const name = "home_page";
  final listItems = [
    Item(name: "Login", route: LoginPage.name),
    Item(name: "Global Settings", route: GlobalSettingsPage.name),
    Item(name: "List With Hero", route: GlobalSettingsPage.name),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Menu Practicas"),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          Item item = listItems[index];
          return ListTile(
            leading: Icon(Icons.ac_unit_outlined, size: 30),
            trailing: Icon(Icons.arrow_right, size: 30),
            title: Text(item.name, style: textStyle),
            onTap: () {
              Navigator.pushNamed(context, item.route);
            },
          );
        },
      ),
    );
  }
}
