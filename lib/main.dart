import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
        body: Container(
          height: 150,
          child: Row(
            children: [
              Image.asset(
                './assets/setting_icon.png',
                width: 150,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'camera',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Text('posted 10 min ago'),
                    Text('100,000won'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        Text('4')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone),
                  Icon(Icons.message),
                  Icon(Icons.contact_page)
                ]),
          ),
        ),
      ),
    );
  }
}
