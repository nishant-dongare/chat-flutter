import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
        // borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Message',
                  contentPadding: EdgeInsets.only(left: 20),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
