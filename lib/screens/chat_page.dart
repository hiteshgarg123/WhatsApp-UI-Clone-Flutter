import 'package:flutter/material.dart';

import '../model/chat.dart';
import '../screens/message_page.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    navigateToMessageScreen(String name, String imageUrl) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return MessagePage(
            name: name,
            imageUrl: imageUrl,
          );
        }),
      );
    }

    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Divider(
              height: 15.0,
            ),
            ListTile(
              leading: CircleAvatar(
                maxRadius: 25.0,
                backgroundImage: NetworkImage(messageData[index].imageUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    messageData[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    messageData[index].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  messageData[index].message,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
              onTap: () {
                navigateToMessageScreen(
                  messageData[index].name,
                  messageData[index].imageUrl,
                );
              },
            ),
          ],
        );
      },
      itemCount: messageData.length,
    );
  }
}
