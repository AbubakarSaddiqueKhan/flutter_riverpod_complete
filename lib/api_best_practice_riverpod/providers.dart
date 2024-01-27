import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_state.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_state_notifier.dart';

final ALbumStateNotifierProvider =
    StateNotifierProvider<ALbumStateNotifier, AlbumState>((ref) {
  return ALbumStateNotifier();
});
