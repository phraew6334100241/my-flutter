import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Team Group")),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            context: context,
            color: Colors.red,
            blocktext: "นายพิสิษฐ์ แซ่เอี้ย",
            imgPath: "lib/asset/images/01.jpg",
            nickname: "ชื่อเล่น:แสตมป์",
            ID: "รหัส:633410083-5",
          ),
          Card(
            context: context,
            color: Colors.yellow,
            blocktext: "นายภัทรพล ลิมปนาคม",
            imgPath: "lib/asset/images/03.jpg",
            nickname: "ชื่อเล่น:พล",
            ID: "รหัส:633410025-9",
          ),
          Card(
            context: context,
            color: Colors.blue,
            blocktext: "นายจตุรวิธ มั่งกูล",
            imgPath: "lib/asset/images/02.jpg",
            nickname: "ชื่อเล่น:ภูผา",
            ID: "รหัส:633410007-1",
          ),
          Card(
            context: context,
            color: Colors.green,
            blocktext: "ฉัน นางสาวแพรวพรรณ แก้วก่ำ",
            imgPath: "lib/asset/images/04.jpg",
            nickname: "ชื่อเล่น:แพรว",
            ID: "รหัส:6334100024-1",
          ),
        ],
      ),
    );
  }

  Widget Card({
    required BuildContext context,
    required Color color,
    required String blocktext,
    required String imgPath,
    required String nickname,
    required String ID,
  }) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: blocktext,
                        imPath: imgPath,
                        Nickname: nickname,
                        id: ID,
                      )));
        },
        child: Column(
          children: [
            CircleAvatar(radius: 150, backgroundImage: NetworkImage(imgPath)),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({
    required this.name,
    required this.Nickname,
    required this.imPath,
    required this.id,
  });
  String name;
  String Nickname;
  String imPath;
  String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              CircleAvatar(radius: 100, backgroundImage: NetworkImage(imPath)),
              Padding(padding: EdgeInsets.all(15.0)),
              Text(name),
              Text(id),
              Text(Nickname),
            ],
          ),
        ));
  }
}
