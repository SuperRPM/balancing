import 'package:flutter/material.dart';
import './bottom_bar.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 0;
  var goodList = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  var nameList = ['a', 'b', 'c'];

  addName(name) {
    setState(() {
      nameList.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogUI(state: a, state2: goodList, addName: addName);
              });
        },
      ),
      appBar: AppBar(
        backgroundColor: (Colors.blueGrey),
        leading: Text('gold ho 3 street'),
        title: Text(
          'this is app',
          style: TextStyle(color: Colors.amber),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('btn1 is clikced');
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print('btn2 is clikced');
            },
            icon: Icon(Icons.navigation),
          ),
          IconButton(
            onPressed: () {
              print('btn3 is clikced');
            },
            icon: Icon(Icons.ring_volume),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Text(goodList[i].toString()),
            title: Text(nameList[i]),
            trailing: TextButton(
              child: Text('good'),
              onPressed: () {
                setState(() {
                  goodList[i]++;
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class DialogUI extends StatefulWidget {
  DialogUI({Key? key, this.state, this.state2, this.addName}) : super(key: key);
  var state;
  final state2;
  final addName;
  var inputName = TextEditingController();

  @override
  State<DialogUI> createState() => _DialogUIState();
}

class _DialogUIState extends State<DialogUI> {
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
                    if (widget.inputName.text.isEmpty) {
                      showDialog(context: context, builder: (builder))
                    }
                    setState(() {
                      widget.addName(widget.inputName.text);
                    });
                    Navigator.pop(context);
                  }),
              TextButton(
                  child: Text('취소'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              TextButton(
                  child: Text(widget.state.toString()),
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
