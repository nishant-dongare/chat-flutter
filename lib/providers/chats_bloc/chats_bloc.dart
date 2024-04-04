import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hike/firebase/firebase_users.dart';

part 'chats_events.dart';

part 'chats_states.dart';

class ChatStateBloc extends Bloc<ChatEvent, ChatState> {
  ChatStateBloc() : super(const ChatState()) {
    on<ChangeChatIndexEvent>(
        (event, emit) => emit(ChatState(chatIndex: event.chatIndex)));

    on<UserLoginEvent>(login);
  }

  void login(UserLoginEvent event, Emitter<ChatState> emit) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.passkey,
      );

      //getting user details
      await FirebaseUsers.getUser(uid: credential.user!.uid);
      emit(UserAuthState(credential.user!));
    } on FirebaseAuthException catch (e) {
      emit(UserAuthError(e.code));
    } catch (e) {
      emit(UserAuthError(e.toString()));
    }
  }
}
