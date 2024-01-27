import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'first_api_model.dart';

extension ResponseCode on http.Response {
  bool isSuccessful() => this.statusCode == 200;
  bool isNotFound() => this.statusCode == 404;
}

abstract class ApiService {
  String baseUrl = "https://pokeapi.co";
  String get apiUrl;
  String get url => baseUrl + apiUrl;

  dynamic fetch() async {
    var response = await http.get(Uri.parse(url));
    if (response.isSuccessful()) {
      return jsonDecode(response.body);
    }
    return null;
  }
}

class FirstApiService extends ApiService {
  static FirstApiService? _firstApiService;

  FirstApiService._internal();

  factory FirstApiService() {
    return _firstApiService ?? FirstApiService._internal();
  }

  Future<FirstApiModel> fetchFirstApiData() async {
    var firstApiMapData = await fetch();
    return FirstApiModel.fromMap(firstApiMapData);
  }

  @override
  String get apiUrl => "/api/v2";
}
