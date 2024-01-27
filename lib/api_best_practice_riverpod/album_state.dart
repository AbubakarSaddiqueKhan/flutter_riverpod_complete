// Make an abstract class of the state (It will becomes the parent of the all possible child classes) .

// Must include the immutable annotation with all of the classes because here we want's our states immutable .
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practice/main.dart';

@immutable
abstract class AlbumState {
  const AlbumState();
}

// Make all of the possible states here .
@immutable
class AlbumInitialState extends AlbumState {}

@immutable
class AlbumLoadingState extends AlbumState {}

@immutable
class AlbumLoadedState extends AlbumState {
  final List<AlbumModel> albums;
  const AlbumLoadedState({required this.albums});
}

@immutable
class AlbumErrorState extends AlbumState {
  final String message;
  const AlbumErrorState({required this.message});
}
