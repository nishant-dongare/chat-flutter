import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient:
            LinearGradient(stops: const [0.02, 0.02], colors: [color, color]),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          IconButton(
            color: Theme.of(context).primaryIconTheme.color,
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
            ),
          ),
          IconButton(
            color: Theme.of(context).primaryIconTheme.color,
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
            color: (color == Colors.white) ? Colors.red : null,
            onPressed: () {},
            icon: const Icon(
              Icons.send,
            ),
          ),
        ],
      ),
    );
  }
}
