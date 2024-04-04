part of 'chats_bloc.dart';

abstract class ChatEvent {}

class UserLoginEvent extends ChatEvent {
  final String email;
  final String passkey;

  UserLoginEvent({required this.email, required this.passkey});
}

class UserRegisterEvent extends ChatEvent {
  final String username;
  final String email;
  final String passkey;

  UserRegisterEvent(
      {this.username = '', required this.email, required this.passkey});
}

class ChangeChatIndexEvent extends ChatEvent {
  final int chatIndex;

  ChangeChatIndexEvent(this.chatIndex);
}

class ChatContactEvent extends ChatEvent {
  final int chatIndex;
  final List contactList;

  ChatContactEvent({required this.chatIndex, required this.contactList});
}

class ChatCompleteEvent extends ChatEvent {
  final int chatIndex;
  final List contactList;
  final List messages;

  ChatCompleteEvent(this.chatIndex,
      {required this.contactList, required this.messages});
}
