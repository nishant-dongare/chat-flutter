import 'package:flutter/material.dart';

class ChatCard extends StatelessWidget {
  final String msg;
  final String time;
  final bool user;
  const ChatCard(
      {Key? key,
      required this.msg,
      required this.time,
      this.user=false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(user) {
      return Align(
          alignment: Alignment.centerRight,
          child: Card(
            color: Theme
                .of(context)
                .cardColor,
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
    return card();
  }

  Align card() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Stack(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(top: 7, left: 10, right: 30, bottom: 20),
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