import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:telegram/constants/chat.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key, required this.chat}) : super(key: key);
  final Chat chat;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: chat.sent.length,
        itemBuilder: (BuildContext context, int index) {
          return Bubble(
            margin: BubbleEdges.only(top: 10),
            color: index % 2 == 0 ? Color(0xFF232E3A) : Color(0xFF3F6189),
            alignment: index % 2 == 0 ? Alignment.topLeft : Alignment.topRight,
            nip: index % 2 == 0 ? BubbleNip.leftBottom : BubbleNip.rightBottom,
            child: Text(
              chat.sent[index],
              style: TextStyle(color: Colors.white),
            ),
          );
        });
  }
}
