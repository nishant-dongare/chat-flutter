import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hike/providers/webProvider.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool theme = context.watch<WebProvider>().getTheme;
    Icon themeIcon = theme
        ? const Icon(Icons.light_mode_sharp)
        : const Icon(Icons.dark_mode_sharp);
    return Container(
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Theme.of(context).scaffoldBackgroundColor),
        ),
      ),
      child: Row(
        children: [
          const Text(
            'hi',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const Spacer(),
          IconButton(
            icon: themeIcon,
            onPressed: () {
              context.read<WebProvider>().setTheme();
            },
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
