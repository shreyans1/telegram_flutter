import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:telegram/constants/chat.dart';

import 'components/singal_chat.dart';

class NewChat extends StatelessWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Message'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                Positioned(
                  right: 13,
                  bottom: 6,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2),
                    child: Text('A'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.people_outline,
              color: Color(0xFF8793A1),
            ),
            title: Text('New Group'),
          ),
          ListTile(
            leading: Icon(
              Icons.lock_outline,
              color: Color(0xFF8793A1),
            ),
            title: Text('New Secret Group'),
          ),
          ListTile(
            leading: Icon(
              Icons.campaign_outlined,
              color: Color(0xFF8793A1),
            ),
            title: Text('New Channel'),
          ),
          Container(
            width: double.infinity,
            height: 50,
            color: Color(0xFf151D27),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                'Sorted by last seen',
                style: TextStyle(color: Color(0xFF818996)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
