import 'package:flutter/material.dart';

class AlbumErrorWidget extends StatelessWidget {
  final String message;
  const AlbumErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text(
        "message",
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }
}
