part of 'biography_category_bloc.dart';

abstract class BiographyCategoryState extends Equatable {
  const BiographyCategoryState();

  @override
  List<Object> get props => [];
}

class BiographyCategoryInitial extends BiographyCategoryState {}

class BiographyCategoryLoading extends BiographyCategoryState {}

class BiographyCategoryLoaded extends BiographyCategoryState {
   final List<BiographyCategory> biographycategory;
  const BiographyCategoryLoaded({required this.biographycategory});

  @override
  List<Object> get props => [];
}


class BiographyCategoryError extends BiographyCategoryState {
  final String message;
  const BiographyCategoryError({required this.message});
  @override
  List<Object> get props => [message];
}
