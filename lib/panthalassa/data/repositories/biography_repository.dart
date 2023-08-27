import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:newsapplication/panthalassa/data/models/biographymodel.dart';
import '../API/api.dart';

abstract class BiographyPageRepository {
  Future<biographymodel> fetchDetails();
}
class BiographyPageRepo extends BiographyPageRepository {
  @override
  Future<biographymodel> fetchDetails() async {
    final response = await http.post(Uri.parse("$baseUrl/api/getbiographycategory"));
    log(response.body.toString());
    return biographymodel.fromJson(jsonDecode(response.body));
  }
}

