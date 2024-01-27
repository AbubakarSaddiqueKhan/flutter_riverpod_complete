import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_main_page_design.dart';
import 'package:flutter_riverpod_practice/counter_best_practice.dart/counter_page_design.dart';

import 'package:flutter_riverpod_practice/counter_page_riverpod/conter_page_design.dart';
import 'package:flutter_riverpod_practice/first_api/first_api_page_design.dart';
import 'package:flutter_riverpod_practice/initial_riverpod_simple_provider/home_page.dart';
import 'package:flutter_riverpod_practice/poke_api/poke_api_page_design.dart';
import 'package:flutter_riverpod_practice/talha_assignment.dart/assignment_design.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'stream_provider.dart/number_page_design.dart';

void main() {
  runApp(const MyApp());
}

// To use the riverpod add the following dependencies

/**
 * 
 * 
 * 
 * flutter pub add flutter_riverpod
flutter pub add riverpod_annotation
flutter pub add dev:riverpod_generator
flutter pub add dev:build_runner
flutter pub add dev:custom_lint
flutter pub add dev:riverpod_lint



 */

// Change the stateless widget into consumer widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Add the provider scope widget at the top of the widget tree .
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        // home: const MyHomePage(title: ""),
        // home: CounterPage(),
        // home: AlbumsPage(),
        // home: CounterPageDesign(),
        // home: AlbumMainPageDesign(),
        // home: const FirstApiPageDesign(),
        // home: const PokemonApiPageDesign(),
        // home: BerryApiDesignPage(),
        // home: const AssignmentPageDesign(),
        // home: const SimpleProviderPageDesign(title: "title"),
        // home: const StateProviderCounterPageDesign(),
        // home: const FutureProviderAlbumApiPageDesign(),
        // home: const NumberPage(),
        // home: const StateNotifierProviderCounterPageDesign(),
        home: const StateNotifierProviderAlbumMainPageDesign(),
      ),
    );
  }
}

// Change the stateful widget into the consumer stateful widget .

// ignore_for_file: public_member_api_docs, sort_constructors_first

class AlbumModel {
  int userId;
  int id;
  String title;
  AlbumModel({
    required this.userId,
    required this.id,
    required this.title,
  });

  AlbumModel copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return AlbumModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory AlbumModel.fromMap(Map<String, dynamic> map) {
    return AlbumModel(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AlbumModel.fromJson(String source) =>
      AlbumModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AlbumModel(userId: $userId, id: $id, title: $title)';

  @override
  bool operator ==(covariant AlbumModel other) {
    if (identical(this, other)) return true;

    return other.userId == userId && other.id == id && other.title == title;
  }

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;
}

extension ResponseCode on http.Response {
  bool get isSuccess => statusCode == 200;
  bool get isInsertSuccess => statusCode == 201;
  bool get isNotFound => statusCode == 404;
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

  Future<bool> delete(
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

  @override
  String get apiURL => '/albums';
}

final AlbumAPIServiceProvider = Provider<AlbumService>((ref) {
  return AlbumService();
});

FutureProvider<List<AlbumModel>> fetchAlbumsProvider =
    FutureProvider<List<AlbumModel>>((ref) async {
  return ref.watch(AlbumAPIServiceProvider).fetchAlbums();
});

class FutureProviderAlbumApiPageDesign extends StatefulWidget {
  const FutureProviderAlbumApiPageDesign({super.key});

  @override
  State<FutureProviderAlbumApiPageDesign> createState() =>
      _FutureProviderAlbumApiPageDesignState();
}

class _FutureProviderAlbumApiPageDesignState
    extends State<FutureProviderAlbumApiPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Consumer(
                  builder: (context, ref, child) {
                    ref.invalidate(fetchAlbumsProvider);
                    return const SizedBox.shrink();
                  },
                );
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Consumer(builder: (context, ref, child) {
        var asyncValue = ref.watch(fetchAlbumsProvider);
        return asyncValue.when(
            data: (albums) => ListView.builder(
                itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        child: Text(albums[index].id.toString()),
                      ),
                      title: Text(albums[index].title),
                    )),
            error: (object, stackTrace) => const Text('Some thing went wrong'),
            loading: () => const Center(child: CircularProgressIndicator()));
      }),
      floatingActionButton: Consumer(
        builder: (context, ref, child) => FloatingActionButton(
          onPressed: () {
            ref.read(
              fetchAlbumsProvider,
            );
          },
          child: const Text('Click To Load'),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import 'berry_api_service.dart';
// import 'beryy_api_model.dart';

class BerryApiDesignPage extends StatefulWidget {
  const BerryApiDesignPage({super.key});

  @override
  State<BerryApiDesignPage> createState() => _BerryApiDesignPageState();
}

final BerryApiService _berryApiService = BerryApiService();
Future<BerryApiModel>? berriesData;

class _BerryApiDesignPageState extends State<BerryApiDesignPage> {
  void fetchBerriesData() {
    setState(() {
      berriesData = _berryApiService.fetchBerriesData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Berry Api Design"),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: berriesData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return InkWell(
                onTap: () {
                  fetchBerriesData();
                },
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.amber,
                  child: const Text("Fetch Berries Data"),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(snapshot.data!.next),
                      ),
                      title: Text(snapshot.data!.count.toString()),
                      // trailing: Text(snapshot.data!.),
                    );
                  },
                );
              }
              return const Text("Oops !! NO Data Found");
            }
          },
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/foundation.dart';

class BerryApiModel {
  int count;
  String next;
  dynamic previous;
  List<ResultsModel> results;
  BerryApiModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  BerryApiModel copyWith({
    int? count,
    String? next,
    dynamic? previous,
    List<ResultsModel>? results,
  }) {
    return BerryApiModel(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'next': next,
      'previous': previous,
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory BerryApiModel.fromMap(Map<String, dynamic> map) {
    return BerryApiModel(
      count: map['count'] as int,
      next: map['next'] as String,
      previous: map['previous'] as dynamic,
      results: List<ResultsModel>.from(
        (map['results'] as List<dynamic>).map<ResultsModel>(
          (x) => ResultsModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BerryApiModel.fromJson(String source) =>
      BerryApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BerryApiModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  // @override
  // bool operator ==(covariant BerryApiModel other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.count == count &&
  //     other.next == next &&
  //     other.previous == previous &&
  //     listEquals(other.results, results);
  // }

  @override
  int get hashCode {
    return count.hashCode ^
        next.hashCode ^
        previous.hashCode ^
        results.hashCode;
  }
}

class ResultsModel {
  String name;
  String url;
  ResultsModel({
    required this.name,
    required this.url,
  });

  ResultsModel copyWith({
    String? name,
    String? url,
  }) {
    return ResultsModel(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory ResultsModel.fromMap(Map<String, dynamic> map) {
    return ResultsModel(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultsModel.fromJson(String source) =>
      ResultsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ResultsModel(name: $name, url: $url)';

  @override
  bool operator ==(covariant ResultsModel other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

// import 'dart:convert';

// import 'beryy_api_model.dart';

extension HttpResponseCode on http.Response {
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


// Future provider .

