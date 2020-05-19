import 'package:flutter/material.dart';

import './calls_page.dart';
import './chat_page.dart';
import './camera_page.dart';
import './status_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Colors.white,
          ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              child: Text(
                'CHATS',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ],
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
