// ignore_for_file: prefer_const_constructors

import 'package:cakeapp/body.dart';
import 'package:cakeapp/commonfile.dart';
import 'package:cakeapp/drawer.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nepal Cakes",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Nepal Cakes",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          child: MainDrawer(),
          backgroundColor: Colors.green,
        ),
        body: PageBody(),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/common': (context) => CommonApp(),
      },
    );
  }
}
