import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/check_people': (context) => Text("check_people"),
      '/choose_menu': (context) => Text("choose_menu"),
      '/history': (context) => Text("history"),
      '/input_price': (context) => Text("input_price"),
      '/result': (context) => Text("result")
    },
    // home: MyApp()
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("neo nano jung san"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
      body: Text("this is main"),
    );
  }
}
