import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'translate_bloc_event.dart';
part 'translate_bloc_state.dart';

class TranslateBlocBloc extends Bloc<TranslateBlocEvent, TranslateBlocState> {
  TranslateBlocBloc() : super(TranslateBlocInitial()) {
    on<TranslateBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
