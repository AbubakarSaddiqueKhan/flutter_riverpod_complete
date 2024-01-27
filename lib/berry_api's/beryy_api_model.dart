// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

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
        (map['results'] as List<int>).map<ResultsModel>(
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

  @override
  bool operator ==(covariant BerryApiModel other) {
    if (identical(this, other)) return true;

    return other.count == count &&
        other.next == next &&
        other.previous == previous &&
        listEquals(other.results, results);
  }

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
