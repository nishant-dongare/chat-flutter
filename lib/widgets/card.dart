import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final bool isCurrentUser;
  final String msg;
  final String time;
  const ChatCard(
      {Key? key,
      required this.msg,
      required this.time,
      this.isCurrentUser = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Card(
        color: isCurrentUser ? null : Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 7, left: 10, right: 30, bottom: 20),
              child: Text(
                msg,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              bottom: 1,
              right: 5,
              child: Row(
                children: [
                  Text(
                    time,
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.done_all, color: Colors.grey, size: 18)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
