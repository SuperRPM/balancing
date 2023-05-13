import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/check_people': (context) => CheckPeoplePage(),
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
  var classList = ['린더벅', '입문', '초중급', '중급', '탄탄베이직'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("neo nano jung san"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
        body: ListView.builder(
            itemCount: classList.length,
            itemBuilder: (c, i) {
              return ListTile(
                title: TextButton(
                  child: Text(classList[i].toString()),
                  onPressed: () {
                    Navigator.pushNamed(context, '/check_people');
                  },
                ),
              );
            })
        // TextButton(
        //   child: Text("move button"),
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/check_people');
        //   },
        // )
        );
  }
}

class CheckPeoplePage extends StatelessWidget {
  const CheckPeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("neo nano jung san"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
        body: Text('hi'));
  }
}
