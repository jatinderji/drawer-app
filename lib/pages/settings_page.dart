import 'package:drawer_app/my_drawer.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Settings'),
      ),
      drawer: const MyDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          Card(
            child: ListTile(
              title: Text(
                'Setting 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                'Setting 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
