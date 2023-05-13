import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("neo nano jung san"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
    );
  }
}
