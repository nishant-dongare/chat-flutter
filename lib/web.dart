import 'package:flutter/material.dart';
import 'package:hike/chatlist.dart';
import 'package:hike/webchatscreen.dart';
import 'package:hike/widgets/topbar.dart';
import 'package:hike/widgets/websearchbar.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 350,
            child: Column(
              children: [
                const Topbar(),
                const WebSearchBar(),
                Expanded(child: ChatList(webview: true)),
              ],
            ),
          ),
          const Expanded(child: WebChatScreen()),
        ],
      ),
    );
  }
}
