import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}


class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // Handle notification switch
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to language settings
            },
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to security settings
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to about screen
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              // Log out the user
            },
          ),
        ],
      ),
    );
  }
}
