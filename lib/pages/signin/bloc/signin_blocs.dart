import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning/pages/signin/bloc/signin_events.dart';
import 'package:ulearning/pages/signin/bloc/signin_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState(email: '', password: '')) {
    on<EmailEvent>((event, state) {
      state.emit(state.copyWith(email));
    });

    on<PasswordEvent>((event, state) {});
  }
}
