import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ContactCard('John Doe', 'john@example.com', 'assets/images/john.jpg'),
        ContactCard('Jane Smith', 'jane@example.com', 'assets/images/jane.jpg'),
        ContactCard('Alice Johnson', 'alice@example.com', 'assets/images/rio.jpg'),
        ContactCard('Bob Brown', 'bob@example.com', 'assets/images/profile.jpg'),
        ContactCard('Rohman Powell', 'alice@example.com', 'assets/images/john.jpg'),
        ContactCard('Alex Carry', 'alice@example.com', 'assets/images/profile.jpg'),
        ContactCard('Mathew Hyden', 'alice@example.com', 'assets/images/jane.jpg'),
      ],
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String email;
  final String profileImage;

  ContactCard(this.name, this.email, this.profileImage);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(profileImage),
        ),
        title: Text(name),
        subtitle: Text(email),
        onTap: () {
          // Handle contact selection
        },
      ),
    );
  }
}
