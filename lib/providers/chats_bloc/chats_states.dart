part of 'chats_bloc.dart';

class ChatState {
  final int chatIndex;

  const ChatState({this.chatIndex = 0});
}

class UserAuthError extends ChatState {
  final String error;

  const UserAuthError(this.error);
}

class UserAuthState extends ChatState {
  final User user;

  const UserAuthState(this.user);
}

class ChatContactState extends ChatState {
  int get getChatIndex => super.chatIndex;
  final List<dynamic> contactList;

  const ChatContactState({required super.chatIndex, required this.contactList});

  ChatContactState setChatIndex(int newIndex) {
    return ChatContactState(chatIndex: newIndex, contactList: contactList);
  }
}

class ChatCompleteState extends ChatState {
  int get getChatIndex => super.chatIndex;
  final List<dynamic> contactList;
  final List<dynamic> messages;

  const ChatCompleteState({
    required super.chatIndex,
    required this.contactList,
    required this.messages,
  });
}
