import 'package:flutter/material.dart';

import '../model/calls.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) => Column(
        children: <Widget>[
          Divider(
            height: 20.0,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(callData[index].imageUrl),
            ),
            title: Text(
              callData[index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                callData[index].time,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ),
            trailing: Icon(
              Icons.call,
            ),
            selected: true,
          ),
        ],
      ),
    );
  }
}
