import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/calls_screen.dart';
import 'package:whatsappclone/pages/camera_screen.dart';
import 'package:whatsappclone/pages/chats_screen.dart';
import 'package:whatsappclone/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> 
with SingleTickerProviderStateMixin {

  TabController _tabController;


  @override

    void initState(){
      super.initState();
      _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);

    }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS", icon: new Icon(Icons.chat_bubble),),
            new Tab(text: "STATUS", icon: new Icon(Icons.photo_filter),),
            new Tab(text: "CALLS", icon: new Icon(Icons.call),),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0) ,
        ),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () =>print("open"),
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.chat, color: Colors.white),
      ),
    );
  }
}