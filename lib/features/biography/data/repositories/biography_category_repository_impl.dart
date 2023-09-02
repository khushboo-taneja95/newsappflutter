import 'package:dartz/dartz.dart';
import 'package:newsapplication/core/errors/failures.dart';
import 'package:newsapplication/features/biography/data/data_sources/biography_category_data_source.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';
import 'package:newsapplication/features/biography/domain/repositories/biography_category_repository.dart';

class BiographyCategoryRepositoryImpl extends BiographyCategoryRepository {
  final BiographyCategoryRemoteDataSource biographyCategoryRemoteDataSource =
      BiographyCategoryRemoteDataSourceImpl();

  @override
  Future<Either<Failure, List<BiographyCategory>>>
      getBiographyCategory() async {
    try {
      final data =
          await biographyCategoryRemoteDataSource.getBiographyCategory();
      print("object");
      print(data.status);

      if (data.status == false) {
        return const Left(ServerFailure("No biography category available."));
      } else {
        if (data.biographycategory!.isEmpty) {
          return const Left(ServerFailure("No biography category available."));
        } else {
          try {
            final biographycategory = data.biographycategory!;
            return Right(biographycategory);
          } on Exception catch (e) {
            return Left(AppException(e.toString()));
          }
        }
      }
    } on Exception catch (e) {
      return Left(AppException(e.toString()));
    }
  }
}
