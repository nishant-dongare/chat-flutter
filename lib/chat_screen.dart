import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/providers/chats_bloc/chats_bloc.dart';
import 'package:hike/widgets/chat_body.dart';
import 'package:hike/widgets/chat_input.dart';
import 'package:hike/widgets/avatar.dart';
import 'package:hike/info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final index = BlocProvider.of<ChatStateBloc>(context).state.chatIndex;
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: const ChatBody(),
      bottomNavigationBar: const InputBar(),
      extendBody: true,
      resizeToAvoidBottomInset: true,
    );
  }
}
