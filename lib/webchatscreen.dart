import 'package:flutter/material.dart';
import 'package:hike/info.dart';
import 'package:hike/providers/webprovider.dart';
import 'package:hike/widgets/avatar.dart';
import 'package:hike/widgets/chatbody.dart';
import 'package:hike/widgets/chatinput.dart';
import 'package:provider/provider.dart';

class WebChatScreen extends StatelessWidget {
  const WebChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var index = context.watch<WebProvider>().index;
    return Column(
      children: [
        AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: getAvatar(info[index]['profilePic'].toString()),
          ),
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
        ),
        Expanded(
          child: Stack(
            children: const [
              ChatBody(),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 60,
                child: InputBar(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
