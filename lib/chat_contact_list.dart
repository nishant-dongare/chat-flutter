import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/chat_screen.dart';
import 'package:hike/info.dart';
import 'package:hike/providers/chats_bloc/chats_bloc.dart';
import 'package:hike/widgets/avatar.dart';

class ChatList extends StatelessWidget {
  final bool webView;

  ChatList({this.webView = false, super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final chatBloc = BlocProvider.of<ChatStateBloc>(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BlocBuilder<ChatStateBloc, ChatState>(builder: (context, state) {
          return ListView.builder(
            itemCount: info.length,
            controller: _scrollController,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if (index != 0) const Divider(indent: 85),
                  InkWell(
                    onTap: () {
                      if (chatBloc.state.chatIndex == index) return;
                      chatBloc.add(ChangeChatIndexEvent(index));
                      if (!webView) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatScreen(),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading:
                            getAvatar(info[index]['profilePic'].toString()),
                        title: Text(info[index]['name'].toString(),
                            style: const TextStyle(fontSize: 18)),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(info[index]['message'].toString(),
                              style: const TextStyle(fontSize: 14)),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
