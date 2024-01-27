import 'dart:convert';
import 'dart:js_util';

import 'package:http/http.dart' as http;

import 'album_model.dart';

extension ResponseCode on http.Response {
  bool get isSuccess => statusCode == 200;
  bool get isInsertSuccess => statusCode == 201;
  bool get isNotFound => statusCode == 404;
  bool get isNotModified => statusCode == 304;
  bool get isBadRequest => statusCode == 400;
  bool get isUnauthorized => statusCode == 401;
  bool get isForbidden => statusCode == 403;
}

abstract class APIService {
  String get baseURL => 'https://jsonplaceholder.typicode.com';
  String get apiURL;
  String get url => baseURL + apiURL;

  dynamic fetch({String endPoint = '', Map<String, String>? headers}) async {
    var response = await http.get(Uri.parse(url + endPoint), headers: headers);
    if (response.isSuccess) {
      
      return jsonDecode(response.body);
    }
    return null;
  }

  Future<bool> insert(Map<String, dynamic> map,
      {Map<String, String>? headers}) async {
    var response = await http.post(Uri.parse(url),
        body: jsonEncode(map), headers: headers);
    return response.isSuccess;
  }

  Future<bool> update(Map<String, dynamic> map,
      {Map<String, String>? headers}) async {
    var response =
        await http.put(Uri.parse(url), body: jsonEncode(map), headers: headers);
    return response.isSuccess;
  }

  Future<bool> deletes(
      {required String endPoint, Map<String, String>? headers}) async {
    var response =
        await http.delete(Uri.parse(url + endPoint), headers: headers);
    return response.isSuccess;
  }
}

class AlbumService extends APIService {
  static AlbumService? _albumService;
  AlbumService._internal();
  factory AlbumService() {
    return _albumService ??= AlbumService._internal();
  }

  Future<List<AlbumModel>> fetchAlbums() async {
    List albumList = await fetch();
    return albumList.map((map) => AlbumModel.fromMap(map)).toList();
  }

  Future<AlbumModel> fetchAlbum(int albumId) async {
    var map = await fetch(endPoint: '/$albumId');
    return AlbumModel.fromMap(map);
  }

  Future<bool> insertAlbum(AlbumModel albumModel) async {
    return await insert(albumModel.toMap());
  }

  Future<bool> updateAlbum(AlbumModel albumModel) async {
    return await update(albumModel.toMap());
  }

  Future<bool> deleteAlbum(String endPoint) async {
    return await deletes(endPoint: endPoint);
  }

  @override
  String get apiURL => '/albums';
}
