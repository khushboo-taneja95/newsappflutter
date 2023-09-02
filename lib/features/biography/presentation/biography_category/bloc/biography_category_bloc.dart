import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapplication/core/di/injection.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';
import 'package:newsapplication/features/biography/domain/use_cases/biography_category_usecase.dart';

part 'biography_category_event.dart';
part 'biography_category_state.dart';

class BiographyCategoryBloc
    extends Bloc<BiographyCategoryEvent, BiographyCategoryState> {
  BiographyCategoryBloc() : super(BiographyCategoryLoading()) {
    on<BiographyCategoryEvent>(_loadLikedList);
    // on<BiographyCategoryClicked>(_clickedLikedList);
  }

  void _loadLikedList(BiographyCategoryEvent event,
      Emitter<BiographyCategoryState> emit) async {
    emit(BiographyCategoryLoading());
  }

  // _clickedLikedList(BiographyCategoryClicked event,
  //     Emitter<BiographyCategoryState> emit) async {
  //   emit(BiographyCategoryLoading());
  //   try {
  //     final participantRes = await BiographyCategoryParams(repository: getIt())
  //         .call(BiographyCategoryParams());
  //     participantRes.fold(
  //         (l) => emit(BiographyCategoryError(message: l.message)),
  //         (r) => emit(BiographyCategoryLoaded(biographycategory: r)));
  //   } catch (e) {
  //     emit(BiographyCategoryError(message: e.toString()));
  //   }
  // }
}
