import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<int> {
  UserCubit() : super(0);

  int get index => state;

  void setIndex(int index) => emit(index);
}
