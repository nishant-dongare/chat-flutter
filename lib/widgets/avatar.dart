import 'package:flutter/material.dart';

CircleAvatar getAvatar(String? url) {
  if (url == null) return userAvatar();
  try {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(url),
    );
  } catch (e) {
    return userAvatar();
  }
}

CircleAvatar userAvatar() {
  return const CircleAvatar(
    radius: 30,
    child: Icon(Icons.person, color: Colors.red),
  );
}
