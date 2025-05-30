


import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class MyBlocObserver extends BlocObserver{
  @override
  void onCreate(BlocBase bloc){
    super.onCreate(bloc);
    debugPrint('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change){
    super.onChange(bloc, change);
    debugPrint('onChange -- ${bloc.runtimeType} -- $change');
  }

  @override
  void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    debugPrint('onEvent -- ${bloc.runtimeType} -- $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    debugPrint('onTransition -- ${bloc.runtimeType} -- $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace){
    super.onError(bloc, error, stackTrace);
    debugPrint('onError -- ${bloc.runtimeType} -- $error');
  }

  @override
  void onClose(BlocBase bloc){
    super.onClose(bloc);
    debugPrint('onClose -- ${bloc.runtimeType}');
  }
}