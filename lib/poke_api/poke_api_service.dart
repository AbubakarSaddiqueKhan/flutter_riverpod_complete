import 'dart:convert';

import 'package:flutter_riverpod_practice/poke_api/poki_api_model.dart';
import 'package:http/http.dart' as http;

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

class PokemonApiService extends ApiService {
  static PokemonApiService? _pokemonApiService;
  PokemonApiService._internal();

  factory PokemonApiService() {
    return _pokemonApiService ?? PokemonApiService._internal();
  }
  Future<PokemonModel> fetchPokemonData() async {
    var map = await fetch();
    return PokemonModel.fromMap(map);
  }

  @override
  String get apiUrl => "/api/v2/pokemon/ditto";
}
