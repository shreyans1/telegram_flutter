import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:telegram/constants/chat.dart';
import 'package:telegram/screens/components/app_bar.dart';
import 'package:telegram/screens/components/singal_chat.dart';

import 'components/drawer.dart';
import 'components/fab.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool _active = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(context),
      appBar: customAppBar(context),
      floatingActionButton: customFAB(context, _active),
      body: NotificationListener(
        onNotification: (t) {
          if (t is ScrollEndNotification) {
            setState(() {
              _active = true;
            });
          }
          if (t is ScrollStartNotification) {
            setState(() {
              _active = false;
            });
          }
          return true;
        },
        child: ListView.builder(
            itemCount: chatScreen.length,
            itemBuilder: (BuildContext context, int index) {
              return SingalChatScreen(
                chat: chatScreen[index],
                index: index,
              );
            }),
      ),
    );
  }
}
