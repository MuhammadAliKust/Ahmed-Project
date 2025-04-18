import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Tile Demo"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 10,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Title"),
              subtitle: Text("Notifcation SubTitle"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 30,top: 10, bottom: 30),
            child: Card(
              elevation: 10,
              color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification Title"),
                subtitle: Text("Notifcation SubTitle"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Card(
            elevation: 10,
            color: Colors.green,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification Title"),
              subtitle: Text("Notifcation SubTitle"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}
