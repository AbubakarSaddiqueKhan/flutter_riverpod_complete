
// // Writes on the main page .
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// import '../api_best_practice_riverpod/album_api_service.dart';
// import '../api_best_practice_riverpod/album_model.dart';

// final AlbumAPIServiceProvider = Provider<AlbumService>((ref) {
//   return AlbumService();
// });

// FutureProvider<List<AlbumModel>> fetchAlbumsProvider =
//     FutureProvider<List<AlbumModel>>((ref) async {
//   return ref.watch(AlbumAPIServiceProvider).fetchAlbums();
// });
