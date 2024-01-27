// import 'package:flutter/material.dart';

// import 'berry_api_service.dart';
// import 'beryy_api_model.dart';

// class BerryApiDesignPage extends StatefulWidget {
//   const BerryApiDesignPage({super.key});

//   @override
//   State<BerryApiDesignPage> createState() => _BerryApiDesignPageState();
// }

// final BerryApiService _berryApiService = BerryApiService();
// Future<BerryApiModel>? berriesData;

// class _BerryApiDesignPageState extends State<BerryApiDesignPage> {
//   void fetchBerriesData() {
//     setState(() {
//       berriesData = _berryApiService.fetchBerriesData();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Berry Api Design"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: FutureBuilder(
//           future: berriesData,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.none) {
//               return Container(
//                 width: 200,
//                 height: 50,
//                 alignment: Alignment.center,
//                 color: Colors.amber,
//                 child: const Text("Fetch Berries Data"),
//               );
//             } else if (snapshot.connectionState == ConnectionState.active ||
//                 snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } else {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       leading: CircleAvatar(
//                         child: Text(snapshot.data!.next),

//                       ),
//                       title: Text(snapshot.data!.count.toString()),
//                       // trailing: Text(snapshot.data!.),
//                     );
//                   },
//                 );
//               }
//               return const Text("Oops !! NO Data Found");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
