import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/api_best_practice_riverpod/providers.dart';

class AlbumInitialWidget extends ConsumerWidget {
  const AlbumInitialWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.read(ALbumStateNotifierProvider.notifier).fetchAlbums();
      },
      child: Container(
        width: 300,
        height: 60,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text("Click To Load Albums"),
      ),
    );
  }
}
