import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/chat_contact_list.dart';
import 'package:hike/providers/theme_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Tab> tabs = [
    const Tab(text: 'Messages'),
    const Tab(text: 'Active'),
    const Tab(text: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    // final themeCubit = BlocProvider.of<ThemeCubit>(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: const Text(
            'hi',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            BlocBuilder<ThemeCubit, bool>(builder: (context, bool theme) {
              return IconButton(
                icon: theme
                    ? const Icon(Icons.light_mode_sharp)
                    : const Icon(Icons.dark_mode_sharp),
                onPressed: () =>
                    BlocProvider.of<ThemeCubit>(context).toggleTheme(),
              );
            }),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          elevation: 0,
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: [
            ChatList(),
            const Center(child: Text('Active')),
            const Center(child: Text('Calls')),
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
