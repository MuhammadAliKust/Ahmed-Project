import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatefulWidget {
  ListViewBuilderDemo({super.key});

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;
                setState(() {});
              },
              leading: Icon(Icons.notifications),
              tileColor: selectedIndex == i ? Colors.green : Colors.white,
              title: Text("Selected Index $selectedIndex"),
              subtitle: Text("Loop Index $i"),
              trailing: Icon(Icons.arrow_forward),
            );
          }),
    );
  }
}
