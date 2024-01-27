
// Writes on the main page .

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'album_providers.dart';

// class FutureProviderAlbumsApiPageDesign extends StatefulWidget {
//   const FutureProviderAlbumsApiPageDesign({super.key});

//   @override
//   State<FutureProviderAlbumsApiPageDesign> createState() => _FutureProviderAlbumsApiPageDesignState();
// }

// class _FutureProviderAlbumsApiPageDesignState extends State<FutureProviderAlbumsApiPageDesign> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Albums'),
//         actions: [IconButton(onPressed: (){
//           Consumer(builder: (context,ref,child) {
//             ref.invalidate(fetchAlbumsProvider);
//             return const SizedBox.shrink();
//           },);
//         }, icon:const Icon(Icons.refresh))],
//       ),
//       body: Consumer(builder: (context, ref, child) {
//         var asyncValue = ref.watch(fetchAlbumsProvider);
//         return asyncValue.when(
//             data: (albums) => ListView.builder(
//                 itemBuilder: (context, index) => ListTile(
//                       leading: CircleAvatar(
//                         child: Text(albums[index].id.toString()),
//                       ),
//                       title: Text(albums[index].title),
//                     )),
//             error: (object, stackTrace) => const Text('Some thing went wrong'),
//             loading: () => const CircularProgressIndicator());
//       }),
//       floatingActionButton: Consumer(
//         builder:(context,ref,child)=> FloatingActionButton(onPressed: (){
//           ref.read(fetchAlbumsProvider);
//         },child:const Text('Click To Load'),),
//       ),
//     );
//   }
// }