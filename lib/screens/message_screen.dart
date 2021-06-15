import 'package:flutter/material.dart';
import 'package:telegram/constants/chat.dart';
import 'package:telegram/screens/components/chatView.dart';

class MesageScreen extends StatefulWidget {
  const MesageScreen({Key? key, required this.avatarColor, required this.chat})
      : super(key: key);
  final Color avatarColor;
  final Chat chat;
  @override
  _MesageScreenState createState() => _MesageScreenState(avatarColor, chat);
}

class _MesageScreenState extends State<MesageScreen> {
  final Color avatarColor;
  final Chat chat;

  _MesageScreenState(this.avatarColor, this.chat);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: avatarColor,
              child: Text(
                'AJ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.chatName,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'last seen recently',
                  style: TextStyle(
                      fontSize: 12, color: Colors.white.withOpacity(0.64)),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ChatView(
            chat: chat,
          ),
          BottomAppBar(
            child: ListTileTheme(
              tileColor: Color(0xFF222E3B),
              textColor: Color(0xFF5D6778),
              iconColor: Color(0xFF5D6778),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.emoji_emotions_outlined),
                  onPressed: () {},
                ),
                title: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Message',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.attach_file_outlined),
                  onPressed: () {},
                ),
                autofocus: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
