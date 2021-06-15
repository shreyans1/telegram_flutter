import 'dart:math';

import 'package:flutter/material.dart';
import 'package:telegram/constants/chat.dart';

import '../message_screen.dart';

class SingalChatScreen extends StatelessWidget {
  const SingalChatScreen({
    Key? key,
    required this.chat,
    required this.index,
  }) : super(key: key);
  final Chat chat;
  final int index;

  @override
  Widget build(BuildContext context) {
    Color rdm = randomColorPicker();
    return Column(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MesageScreen(
                          avatarColor: rdm,
                          chat: chat,
                        )));
          },
          leading: CircleAvatar(
            child: Text(chat.avatar),
            radius: 30,
            backgroundColor: rdm,
          ),
          title: Row(children: [
            Text(
              chat.chatName,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              width: 7.0,
            ),
            Container(
              child: Icon(
                Icons.volume_off,
                size: 15,
                color: chat.notificationMuted
                    ? Color(0xFF38444F)
                    : Colors.transparent,
              ),
            ),
          ]),
          subtitle: Text(chat.mostRecentMessage),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                chat.date,
                style: TextStyle(color: Colors.white.withOpacity(0.64)),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF41525D),
                  shape: chat.unreadMessages < 10
                      ? BoxShape.circle
                      : BoxShape.rectangle,
                  borderRadius: chat.unreadMessages < 10
                      ? null
                      : BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 4.0, vertical: 4.0),
                  child: Text(
                    chat.unreadMessages.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.2,
          color: Colors.black87.withOpacity(0.6),
        ),
      ],
    );
    //trailing: Container());
  }

  Color randomColorPicker() {
    var rnd = new Random();
    int i = index % 2;
    List colorsList = [Color(0xFF64C0FC), Color(0xFFF0BD63)];
    return colorsList[i];
  }
}
