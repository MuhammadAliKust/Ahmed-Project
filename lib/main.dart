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
          body:Column(children: [
            Image.network(
              'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
              height: 100,
              width: 30,
            ),
            SizedBox(height: 20,),
            Image.asset('assets/images/1.png')
          ],)),
    );
  }
}
