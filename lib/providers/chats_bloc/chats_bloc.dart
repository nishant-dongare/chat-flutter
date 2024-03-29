import 'package:flutter_bloc/flutter_bloc.dart';

part 'chats_events.dart';

class ChatState {
  int chatScreenIndex;

  ChatState({required this.chatScreenIndex});
}

class ChatScreenBloc extends Bloc<ChatScreenEvent, ChatState> {
  ChatScreenBloc() : super(ChatState(chatScreenIndex: 0)) {
    on<ChatScreenIndexEvent>(
        (event, emit) => emit(ChatState(chatScreenIndex: event.chatIndex)));
  }
}
