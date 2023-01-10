import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  const InputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: const Border(
          bottom: BorderSide(color: Colors.grey),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 15),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Message',
                    contentPadding: const EdgeInsets.only(left: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    )),
              ),
            ),
          ),
          IconButton(
            color: Colors.redAccent,
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
