import 'package:flutter/material.dart';
import 'package:hike/info.dart';
import 'package:hike/widgets/card.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColorLight,
      child: ListView.builder(
        itemCount: messages.length,
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: ((context, i) {
          if (messages[i]['isMe'] == true) {
            return ChatCard(
              isCurrentUser: true,
              msg: messages[i]['text'].toString(),
              time: messages[i]['time'].toString(),
            );
          }
          return card(
            msg: messages[i]['text'].toString(),
            time: messages[i]['time'].toString(),
          );
        }),
      ),
    );
  }
}
