import 'package:flutter/material.dart';
import 'package:hike/chat_list.dart';
import 'package:hike/web_chat_screen.dart';
import 'package:hike/widgets/topbar.dart';
import 'package:hike/widgets/web_searchbar.dart';

class Web extends StatelessWidget {
  const Web({super.key});

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
                Expanded(child: ChatList(webView: true)),
              ],
            ),
          ),
          const Expanded(child: WebChatScreen()),
        ],
      ),
    );
  }
}
