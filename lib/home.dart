import 'package:flutter/material.dart';
import 'package:hike/chatlist.dart';
import 'package:hike/providers/webprovider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<Tab> tabs = [
    const Tab(text: 'Messages'),
    const Tab(text: 'Active'),
    const Tab(text: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            'hi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            IconButton(
              icon: context.watch<WebProvider>().getTheme
                  ? const Icon(Icons.light_mode_sharp)
                  : const Icon(Icons.dark_mode_sharp),
              onPressed: () {
                context.read<WebProvider>().setTheme();
              },
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          elevation: 0,
          bottom: TabBar(
            tabs: tabs,
            //Flutter Bug in tabIndicator
            // indicatorColor: Colors.transparent,
            indicator: const BoxDecoration(
              color: Colors.transparent,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ChatList(),
            Center(
              child: Text('Active'),
            ),
            Center(
              child: Text('Calls'),
            ),
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(
            Icons.message_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
