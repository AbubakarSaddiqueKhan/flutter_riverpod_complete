import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practice/main.dart';

class AlbumLoadedWidget extends StatelessWidget {
  final List<AlbumModel> albums;
  const AlbumLoadedWidget({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                child: Text(albums[index].id.toString()),
              ),
              title: Text(albums[index].title),
              trailing: Text(albums[index].userId.toString()),
            ));
  }
}
