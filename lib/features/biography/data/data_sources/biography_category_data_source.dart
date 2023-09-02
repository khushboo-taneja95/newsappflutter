import 'dart:convert';

import 'package:newsapplication/core/networking/urls.dart';
import 'package:newsapplication/features/biography/data/models/biography_category_model.dart';
import 'package:http/http.dart' as http;

abstract class BiographyCategoryRemoteDataSource {
  Future<BiographyCategoryModel> getBiographyCategory();
}

class BiographyCategoryRemoteDataSourceImpl
    extends BiographyCategoryRemoteDataSource {
  @override
  Future<BiographyCategoryModel> getBiographyCategory() async {
    var response = await http.post(Uri.parse(AppUrl.getbiographycategory));
    print('response of morderer');
    print(response.body.toString());
    if (response.statusCode == 200) {
        return BiographyCategoryModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Something went wrong");
    }
  }
}
