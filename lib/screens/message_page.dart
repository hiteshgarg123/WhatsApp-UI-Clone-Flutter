import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  final String name;
  final String imageUrl;

  const MessagePage({Key key, this.name, this.imageUrl}) : super(key: key);
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    final Widget roundedContainer = ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(width: 8.0),
            Icon(
              Icons.insert_emoticon,
              size: 30.0,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(
              Icons.attach_file,
              size: 30.0,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(width: 8.0),
            Icon(
              Icons.camera_alt,
              size: 30.0,
              color: Theme.of(context).hintColor,
            ),
            SizedBox(width: 8.0),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              maxRadius: 20.0,
              backgroundImage: NetworkImage(widget.imageUrl),
            ),
            Expanded(
              child: Center(
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: roundedContainer,
              ),
              SizedBox(
                width: 5.0,
              ),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
