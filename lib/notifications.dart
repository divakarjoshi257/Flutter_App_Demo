import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}

class NotificationScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'New Message',
      message: 'You have a new message from John.',
      time: '2 hours ago',
    ),
    NotificationItem(
      title: 'Event Reminder',
      message: 'Don\'t forget the team meeting at 3 PM.',
      time: '5 hours ago',
    ),
    NotificationItem(
      title: 'Friend Request',
      message: 'Alice sent you a friend request.',
      time: '1 day ago',
    ),
    NotificationItem(
      title: 'Friend Request',
      message: 'Alice sent you a friend request.',
      time: '1 day ago',
    ),
    NotificationItem(
      title: 'Friend Request',
      message: 'Alice sent you a friend request.',
      time: '1 day ago',
    ),
    NotificationItem(
      title: 'Friend Request',
      message: 'Alice sent you a friend request.',
      time: '1 day ago',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.notifications),
            ),
            title: Text(notifications[index].title),
            subtitle: Text(notifications[index].message),
            trailing: Text(notifications[index].time),
            onTap: () {
              // Handle notification tap (e.g., navigate to a specific screen)
            },
          );
        },
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String message;
  final String time;

  NotificationItem({
    required this.title,
    required this.message,
    required this.time,
  });
}
