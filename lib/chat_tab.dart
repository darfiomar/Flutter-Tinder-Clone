import 'package:flutter/material.dart';

import 'chat_functionality/feeds.dart';
import 'chat_functionality/messages.dart';

class ChatTab extends StatefulWidget {
  @override
  _ChatTabState createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              new TabBar(
                indicator: BoxDecoration(color: Colors.transparent),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.purple[400],
                tabs: [
                  new Tab(
                    child: Text(
                      "Matches",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Tab(
                      child: Text(
                    "Feeds",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ChatsMainTinder(),
            Feeds(),
          ],
        ),
      ),
    );
  }
}
