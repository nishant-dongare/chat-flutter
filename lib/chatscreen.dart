import 'package:flutter/material.dart';
import 'package:hike/widgets/chatbody.dart';
import 'package:hike/widgets/chatinput.dart';
import 'package:provider/provider.dart';
import 'package:hike/providers/webprovider.dart';
import 'package:hike/widgets/avatar.dart';
import 'package:hike/info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(context),
      body: const ChatBody(),
      bottomNavigationBar: const InputBar(),
    );
  }

  AppBar chatAppBar(BuildContext context) {
    var index = context.watch<WebProvider>().index;
    return AppBar(
      leading: Row(
        children: [
          Expanded(
            flex: 2,
            child: IconButton(
              iconSize: 15,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: getAvatar(info[index]['profilePic'].toString()),
            // ),
          ),
        ],
      ),
      titleSpacing: 10,
      title: Text(
        info[index]['name'].toString(),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
    );
  }
}
