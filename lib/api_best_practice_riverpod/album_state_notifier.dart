import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_state.dart';
import 'package:flutter_riverpod_practice/main.dart';

class ALbumStateNotifier extends StateNotifier<AlbumState> {
  ALbumStateNotifier() : super(AlbumInitialState());

  Future<List<AlbumModel>> fetchAlbums() async {
    var albumService = AlbumService();
    List<AlbumModel> albums = [];
    state = AlbumLoadingState();
    try {
      albums = await albumService.fetchAlbums();
      state = AlbumLoadedState(albums: albums);
    } catch (e) {
      print(e);
      state = AlbumErrorState(message: e.toString());
    }
    return Future.value(albums);
  }
}
