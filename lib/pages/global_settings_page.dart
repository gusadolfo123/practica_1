import 'package:flutter/material.dart';

class GlobalSettingsPage extends StatelessWidget {
  static final name = "global_settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Global Settings"),
      ),
      body: Text("Global Settings"),
    );
  }
}
