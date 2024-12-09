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
            title: const Text(
              "First Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            actions: [
              const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "First Text",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Second Text"),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add),
                    Column(
                      children: [
                        Icon(Icons.share),
                        Row(
                          children: [
                            Icon(Icons.share),
                            Icon(Icons.share),
                          ],
                        ),
                        Icon(Icons.share),
                      ],
                    ),
                    Icon(Icons.comment)
                  ],
                )
              ],
            ),
          )),
    );
  }
}
