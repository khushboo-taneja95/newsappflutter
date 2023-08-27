part of 'biography_bloc.dart';
@immutable
abstract class BiographypageState {}
class BiographypageInitial extends BiographypageState {}
class BiographypageLoading extends BiographypageState {}
class BiographypageLoaded extends BiographypageState {
  final biographymodel data;
  BiographypageLoaded(this.data);
}
class BiographypageError extends BiographypageState {}
