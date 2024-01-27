import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_state.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_widgets/album_error_widget.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_widgets/album_initial_widget.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_widgets/album_loaded_widget.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/album_widgets/album_loading_widget.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/providers.dart';

class StateNotifierProviderAlbumMainPageDesign extends StatefulWidget {
  const StateNotifierProviderAlbumMainPageDesign({super.key});

  @override
  State<StateNotifierProviderAlbumMainPageDesign> createState() =>
      _StateNotifierProviderAlbumMainPageDesignState();
}

class _StateNotifierProviderAlbumMainPageDesignState
    extends State<StateNotifierProviderAlbumMainPageDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums Best Practice Api Riverpod"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            var albumState = ref.watch(ALbumStateNotifierProvider);
            if (albumState is AlbumInitialState) {
              return const AlbumInitialWidget();
            } else if (albumState is AlbumLoadingState) {
              return const AlbumLoadingWidget();
            } else if (albumState is AlbumLoadedState) {
              return AlbumLoadedWidget(albums: albumState.albums);
            } else {
              return AlbumErrorWidget(
                  message: (albumState as AlbumErrorState).message);
            }
          },
        ),
      ),
    );
  }
}
