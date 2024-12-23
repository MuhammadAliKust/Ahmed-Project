import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
          title: Text("Posts"),
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_cart),
            Icon(Icons.notifications),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/1.png'),
            Text(
              "What is Lorem Ipsum?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
                Icon(Icons.add),
              ],
            )
          ],
        ),
      ),
    );
  }
}
