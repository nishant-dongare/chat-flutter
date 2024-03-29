part of 'chats_bloc.dart';

abstract class ChatScreenEvent {}

class ChatScreenIndexEvent extends ChatScreenEvent {
  final int chatIndex;

  ChatScreenIndexEvent(this.chatIndex);
}
