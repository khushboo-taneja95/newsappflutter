import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapplication/core/errors/failures.dart';
import 'package:newsapplication/core/usecase/usecase.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';
import 'package:newsapplication/features/biography/domain/repositories/biography_category_repository.dart';

class BiographyCategoryUseCase
    extends UseCase<List<BiographyCategory>, BiographyCategoryParams> {
  final BiographyCategoryRepository repository;

  BiographyCategoryUseCase({required this.repository});

  @override
  Future<Either<Failure, List<BiographyCategory>>> call(
      BiographyCategoryParams params) {
    return repository.getBiographyCategory();
  }
}

class BiographyCategoryParams extends Equatable {
  const BiographyCategoryParams();

  @override
  List<Object?> get props => [];
}
