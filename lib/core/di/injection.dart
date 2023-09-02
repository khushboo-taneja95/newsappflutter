
import 'package:get_it/get_it.dart';
import 'package:newsapplication/features/biography/data/repositories/biography_category_repository_impl.dart';
import 'package:newsapplication/features/biography/domain/repositories/biography_category_repository.dart';

final getIt = GetIt.instance;

Future<void> registerDependncies() async {

  


  getIt.registerLazySingleton<BiographyCategoryRepository>(
    () => BiographyCategoryRepositoryImpl(),
  );

  

}
