
import 'package:ahmed_project/list_tile.dart';
import 'package:ahmed_project/list_view_builder.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewBuilderDemo(),
    );
  }
}
