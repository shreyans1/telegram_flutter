import 'package:flutter/material.dart';

Drawer customDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryVariant,
            ),
            child: Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        radius: 32,
                        child: Text(
                          'SJ',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: MediaQuery.of(context).platformBrightness ==
                                Brightness.dark
                            ? Icon(Icons.light_mode)
                            : Icon(Icons.dark_mode),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('Shreyans Jain'),
                          Text(
                            '+91 123456789',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_down))
                    ],
                  ),
                ],
              ),
            )),
        ListTile(
          title: Text('Test1'),
          leading: Icon(
            Icons.people_outline_outlined,
            color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.8),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('Test2'),
          leading: Icon(
            Icons.person_outline,
            color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.8),
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('Test3'),
          leading: Icon(
            Icons.phone_outlined,
            color: Theme.of(context).colorScheme.onSecondary.withOpacity(0.8),
          ),
          onTap: () {},
        ),
      ],
    ),
  );
}
