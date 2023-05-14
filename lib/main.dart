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
    {
      'name': '꽁순',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '자유시간',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '너자',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '베이브',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '스카',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '딩구',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '매력킴',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '코지',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '관장님',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '구리',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '네모',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '물범',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '오라클',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '용용',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '카스',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '호시',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '다투라',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '상윤',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {'name': '휴', 'andrew': false, 'soju': false, 'beer': false, 'soda': false},
    {
      'name': '쎄쎄',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '켈리',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '쀼이',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '오숭',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '델라',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '루케',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '트리플A',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '싸비',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '제이콥',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '만듀',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '만수',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '샤샤',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '시니',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '웅이',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '지니',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '체리',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '카빵',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '쿠키',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '하이',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '유니',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '펭지',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '뉴니',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
    {
      'name': '해주',
      'andrew': false,
      'soju': false,
      'beer': false,
      'soda': false
    },
  ];

  // List<Map<String, dynamic>> nameToObj(List<String> nameList) {
  //   var tempList = <Map<String, dynamic>>[];
  //   for (var name in nameList) {
  //     tempList.add({
  //       'name': name,
  //       'andrew': false,
  //       'soju': false,
  //       'beer': false,
  //       'soda': false,
  //     });
  //   }
  //   return tempList;
  // }

  // List<Map<String, dynamic>> objList = [];
  // var routeList = ['/check_people', '/choose_menu','/history',]
  addName(name) {
    setState(() {
      nameListTemp.add({
        'name': name,
        'andrew': false,
        'soju': false,
        'beer': false,
        'soda': false
      });
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
  List<Map<String, Object>> nameList;
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
                    builder: (context) => SelectMenu(nameList: widget.nameList),
                  ),
                );
              },
            ),
            Expanded(
                child: ListView.builder(
              itemCount: widget.nameList.length,
              itemBuilder: (c, i) {
                return ListTile(
                    title: Text(widget.nameList[i]['name'].toString()));
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
  List<Map<String, Object>> nameList;
  SelectMenu({super.key, required this.nameList});

  @override
  State<SelectMenu> createState() => _SelectMenuState();
}

class _SelectMenuState extends State<SelectMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("neo nano jung san"), actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return DialogInputPrice(nameList: widget.nameList);
                    });
              },
              icon: Icon(Icons.money)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ]),
        body: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Table(
                defaultColumnWidth: FixedColumnWidth(1),
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text('이름'),
                      ),
                      TableCell(
                        child: Text('안주'),
                      ),
                      TableCell(
                        child: Text('소주'),
                      ),
                      TableCell(
                        child: Text('맥주'),
                      ),
                      TableCell(
                        child: Text('음료'),
                      )
                    ],
                  ),
                  ...widget.nameList.asMap().entries.map((entry) {
                    final index = entry.key;
                    var person = entry.value;

                    return TableRow(
                      children: [
                        TableCell(
                          child: Text(person['name'].toString()),
                        ),
                        TableCell(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (person['andrew'] is bool) {
                                  person['andrew'] =
                                      !(person['andrew'] as bool);
                                }
                              });
                            },
                            child: Text('A'),
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              if (person['andrew'] == true) {
                                return Colors.blue;
                              } else {
                                return Colors.white;
                              }
                            })),
                          ),
                        ),
                        TableCell(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (person['soju'] is bool) {
                                  person['soju'] = !(person['soju'] as bool);
                                }
                              });
                            },
                            child: Text('S'),
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              if (person['soju'] == true) {
                                return Colors.blue;
                              } else {
                                return Colors.white;
                              }
                            })),
                          ),
                        ),
                        TableCell(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (person['beer'] is bool) {
                                  person['beer'] = !(person['beer'] as bool);
                                }
                              });
                            },
                            child: Text('B'),
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              if (person['beer'] == true) {
                                return Colors.blue;
                              } else {
                                return Colors.white;
                              }
                            })),
                          ),
                        ),
                        TableCell(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (person['soda'] is bool) {
                                  person['soda'] = !(person['soda'] as bool);
                                }
                              });
                            },
                            child: Text('so'),
                            style: ButtonStyle(backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (states) {
                              if (person['soda'] == true) {
                                return Colors.blue;
                              } else {
                                return Colors.white;
                              }
                            })),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ],
              ),
            )));
  }
}

class DialogInputPrice extends StatefulWidget {
  var nameList;
  DialogInputPrice({super.key, required this.nameList});
  var totalPrice = TextEditingController();
  var andrewPrice = TextEditingController();
  var sojuPrice = TextEditingController();
  var beerPrice = TextEditingController();
  var sodaPrice = TextEditingController();

  @override
  State<DialogInputPrice> createState() => _DialogInputPriceState();
}

class _DialogInputPriceState extends State<DialogInputPrice> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 600,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "총금액"),
              controller: widget.sodaPrice,
            ),
            TextField(
              decoration: InputDecoration(hintText: "안주"),
              controller: widget.totalPrice,
            ),
            TextField(
              decoration: InputDecoration(hintText: "소주"),
              controller: widget.andrewPrice,
            ),
            TextField(
              decoration: InputDecoration(hintText: "맥주"),
              controller: widget.sojuPrice,
            ),
            TextField(
              decoration: InputDecoration(hintText: "음료수"),
              controller: widget.beerPrice,
            ),
            Row(children: [
              TextButton(
                  child: Text('등록'),
                  onPressed: () {
                    // if (widget.inputName.text.isEmpty) {
                    //   showDialog(context: context, builder: (builder))
                    // }
                    // setState(() {
                    // widget.addName(widget.inputName.text);
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
