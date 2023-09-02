part of 'biography_category_bloc.dart';

abstract class BiographyCategoryEvent extends Equatable {
  const BiographyCategoryEvent();

  @override
  List<Object> get props => [];
}

class BiographyCategoryLoadedEvent extends BiographyCategoryEvent {
  const BiographyCategoryLoadedEvent();
  @override
  List<Object> get props => [];
}

class BiographyCategoryLoadEvent extends BiographyCategoryEvent {
  const BiographyCategoryLoadEvent();

  @override
  List<Object> get props => [];
}

class BiographyCategoryClicked extends BiographyCategoryEvent {
  const BiographyCategoryClicked();

  @override
  List<Object> get props => [];
}
