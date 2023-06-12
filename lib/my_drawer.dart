import 'package:drawer_app/pages/home_page.dart';
import 'package:drawer_app/pages/notifications_page.dart';
import 'package:drawer_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/ogw/AOLn63GjcxrBvAgXe2SU9fMOSea6dv4ipdDOlkAeWyGKMA=s256-c-mo'),
                ),
                Text('Jatinder Verma'),
                Text('jatinder.verma6@gmail.com'),
              ],
            ),
          ),
          // Menu Items
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              //
              navigateTo(context, const HomePage());
              //
            },
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {
              //
              navigateTo(context, const SettingsPage());
              //
            },
          ),
          ListTile(
            title: const Text('Notifications'),
            leading: const Icon(Icons.notifications),
            onTap: () {
              //
              navigateTo(context, const NotificationsPage());
              //
            },
          ),
          ListTile(
            title: const Text('Logout'),
            leading: const Icon(Icons.logout),
            onTap: () {
              //
              SystemNavigator.pop();
              //
            },
          ),
        ],
      ),
    );
  }

  navigateTo(context, route) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  }
}
