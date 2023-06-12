import 'package:drawer_app/my_drawer.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Notifications'),
      ),
      drawer: const MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(5),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 1'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 2'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 3'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification 4'),
            ),
          )
        ],
      ),
    );
  }
}
