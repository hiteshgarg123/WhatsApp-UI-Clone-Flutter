import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String name, imageUrl, time;

  const PersonCard({Key key, this.name, this.imageUrl, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25.0,
        foregroundColor: Colors.deepPurple,
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(time),
    );
  }
}
