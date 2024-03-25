import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/providers/ThemeCubit.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = BlocProvider.of<ThemeCubit>(context);

    Icon themeIcon = themeCubit.isDarkTheme
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
            onPressed: () => themeCubit.changeTheme(),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
    );
  }
}
