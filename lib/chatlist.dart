import 'package:flutter/material.dart';
import 'package:hike/chatscreen.dart';
import 'package:hike/info.dart';
import 'package:hike/providers/webprovider.dart';
import 'package:hike/widgets/avatar.dart';
import 'package:provider/provider.dart';

class ChatList extends StatelessWidget {
  final bool webview;
  const ChatList({this.webview = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFEF9EB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    context.read<WebProvider>().setIndex(index);
                    if (!webview) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatScreen(),
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      title: Text(info[index]['name'].toString(),
                          style: const TextStyle(fontSize: 18)),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(info[index]['message'].toString(),
                            style: const TextStyle(fontSize: 18)),
                      ),
                      leading: getAvatar(info[index]['profilePic'].toString()),
                      trailing: Text(info[index]['time'].toString(),
                          style: const TextStyle(
                              fontSize: 13, color: Colors.grey)),
                    ),
                  ),
                ),
                const Divider(indent: 85),
              ],
            );
          },
        ),
      ),
    );
  }
}
