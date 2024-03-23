import 'package:flutter/material.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white70,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: 'Search a chat',
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey[700]),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              size: 20,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
        ),
      ),
    );
  }
}
