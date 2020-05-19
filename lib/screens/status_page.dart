import 'package:flutter/material.dart';

import '../model/chat.dart';
import '../widgets/person_card.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        PersonCard(
          name: 'My Status',
          imageUrl:
              "https://images.pexels.com/photos/1149022/pexels-photo-1149022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
          time: "Tap to add status",
        ),
        Divider(),
        Heading(
          heading: "Recent Updates",
        ),
        PersonCard(
          name: messageData[2].name,
          imageUrl: messageData[2].imageUrl,
          time: messageData[2].time,
        ),
        PersonCard(
          name: messageData[3].name,
          imageUrl: messageData[3].imageUrl,
          time: messageData[3].time,
        ),
        Divider(),
        Heading(
          heading: 'Viewed Updates',
        ),
        PersonCard(
          name: messageData[4].name,
          imageUrl: messageData[4].imageUrl,
          time: messageData[4].time,
        ),
        PersonCard(
          name: messageData[5].name,
          imageUrl: messageData[5].imageUrl,
          time: messageData[5].time,
        ),
        PersonCard(
          name: messageData[6].name,
          imageUrl: messageData[6].imageUrl,
          time: messageData[6].time,
        ),
      ],
    );
  }
}

class Heading extends StatelessWidget {
  final String heading;

  const Heading({Key key, this.heading}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 5.0,
        ),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
