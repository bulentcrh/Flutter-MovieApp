import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyWhatchList extends StatefulWidget {
  const MyWhatchList({super.key});

  @override
  State<MyWhatchList> createState() => _MyWhatchListState();
}

class _MyWhatchListState extends State<MyWhatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Whatchlist"),
        centerTitle: true,
      ),
    ); 
  }
}