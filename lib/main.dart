import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      // '/check_people': (context) => CheckPeoplePage(),
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
  var nameListTemp = [
    '관장님',
    '정시니',
    '154꽁순',
    '딩구',
    '하이',
    '바이',
    '체리',
    '엄마는외계인',
    '아빠도외계인',
    '나는지구인',
    '난입양됐나?',
    '빵카',
    '네모',
    '세모'
  ];
  // var routeList = ['/check_people', '/choose_menu','/history',]
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckPeoplePage(
                          className: classList[i],
                          nameList: nameListTemp,
                        ),
                      ),
                    );
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
  final String className;
  final List<String> nameList;

  const CheckPeoplePage(
      {super.key, required this.className, required this.nameList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("neo nano jung san"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
        body: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (c, i) {
            return ListTile(title: Text(nameList[i]));
          },
        ));
  }
}
