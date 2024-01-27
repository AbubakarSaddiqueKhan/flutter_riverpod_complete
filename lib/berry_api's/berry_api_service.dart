import 'dart:convert';

import 'package:http/http.dart' as http;

import 'beryy_api_model.dart';

extension ResponseCode on http.Response {
  bool isSuccessful() => this.statusCode == 200;
  bool isNotFound() => this.statusCode == 404;
}

abstract class ApiService {
  String baseUrl = "https://pokeapi.co";
  String get apiURL;
  String get url => baseUrl + apiURL;

  dynamic fetch() async {
    var response = await http.get(Uri.parse(url));
    if (response.isSuccessful()) {
      return jsonDecode(response.body);
    }

    return null;
  }
}

class BerryApiService extends ApiService {
  @override
  String get apiURL => "/api/v2/berry";

  static BerryApiService? _berryApiService;

  BerryApiService._internal();

  factory BerryApiService() {
    return _berryApiService ?? BerryApiService._internal();
  }

  Future<BerryApiModel> fetchBerriesData() async {
    var map = await fetch();
    return BerryApiModel.fromMap(map);
  }
}
