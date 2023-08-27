import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newsapplication/panthalassa/data/models/biographymodel.dart';
import 'package:newsapplication/panthalassa/data/repositories/biography_repository.dart';
part 'biography_event.dart';
part 'biography_state.dart';
class BiographypageBloc extends Bloc<BiographypageEvent,BiographypageState> {
  late biographymodel data;
  final BiographyPageRepo biographyPageRepo;
  BiographypageBloc(this.biographyPageRepo) : super(BiographypageInitial()) {
    on<BiographypageEvent>((event, emit) async {
      if (event is SendData) {
        emit(BiographypageLoading());
        await Future.delayed(const Duration(seconds: 3), () async {
          data = await biographyPageRepo.fetchDetails();
          emit(BiographypageLoaded(data));
        });
      }
    });
  }
}
