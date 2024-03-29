import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/info.dart';
import 'package:hike/providers/chats_bloc/chats_bloc.dart';
import 'package:hike/widgets/avatar.dart';
import 'package:hike/widgets/chat_body.dart';
import 'package:hike/widgets/chat_input.dart';

class WebChatScreen extends StatelessWidget {
  const WebChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log("ChatScreen Initiated");
    return BlocBuilder<ChatScreenBloc, ChatState>(
        buildWhen: (prev, state) =>
            prev.chatScreenIndex != state.chatScreenIndex,
        builder: (BuildContext context, state) {
          log("ChatScreen builder ${state.chatScreenIndex}");

          return Column(
            children: [
              AppBar(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: getAvatar(
                      info[state.chatScreenIndex]['profilePic'].toString()),
                ),
                title: Text(
                  info[state.chatScreenIndex]['name'].toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
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
              const Expanded(
                child: Stack(
                  children: [
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
        });
  }
}
