
import 'package:dartz/dartz.dart';
import 'package:newsapplication/core/errors/failures.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';

abstract class BiographyCategoryRepository {
  Future<Either<Failure, List<BiographyCategory>>> getBiographyCategory();
}
