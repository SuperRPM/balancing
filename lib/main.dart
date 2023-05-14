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

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  addName(name) {
    setState(() {
      nameListTemp.add(name);
    });
  }

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
                          addName: addName,
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

class CheckPeoplePage extends StatefulWidget {
  final String className;
  List<String> nameList;
  final Function addName;

  CheckPeoplePage(
      {super.key,
      required this.className,
      required this.nameList,
      required this.addName});

  @override
  State<CheckPeoplePage> createState() => _CheckPeoplePageState();
}

class _CheckPeoplePageState extends State<CheckPeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return DialogAddPerson(addName: widget.addName);
                });
          },
        ),
        appBar: AppBar(
            title: Text("neo nano jung san"),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))]),
        body: Column(
          children: [
            TextButton(
              child: Text('정산시작'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectMenu(),
                  ),
                );
              },
            ),
            Expanded(
                child: ListView.builder(
              itemCount: widget.nameList.length,
              itemBuilder: (c, i) {
                return ListTile(title: Text(widget.nameList[i]));
              },
            ))
          ],
        ));
  }
}

class DialogAddPerson extends StatefulWidget {
  final Function addName;
  DialogAddPerson({super.key, required this.addName});
  var inputGisu = TextEditingController();
  var inputName = TextEditingController();
  @override
  State<DialogAddPerson> createState() => _DialogAddPersonState();
}

class _DialogAddPersonState extends State<DialogAddPerson> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              controller: widget.inputName,
            ),
            Row(children: [
              TextButton(
                  child: Text('등록'),
                  onPressed: () {
                    // if (widget.inputName.text.isEmpty) {
                    //   showDialog(context: context, builder: (builder))
                    // }
                    // setState(() {
                    widget.addName(widget.inputName.text);
                    // });
                    Navigator.pop(context);
                  }),
              TextButton(
                  child: Text('취소'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ])
          ],
        ),
      ),
    );
  }
}

class SelectMenu extends StatefulWidget {
  const SelectMenu({super.key});

  @override
  State<SelectMenu> createState() => _SelectMenuState();
}

class _SelectMenuState extends State<SelectMenu> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
