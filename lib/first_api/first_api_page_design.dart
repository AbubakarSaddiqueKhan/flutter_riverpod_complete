import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practice/first_api/first_api_model.dart';
import 'package:flutter_riverpod_practice/first_api/first_api_service.dart';

class FirstApiPageDesign extends StatefulWidget {
  const FirstApiPageDesign({super.key});

  @override
  State<FirstApiPageDesign> createState() => _FirstApiPageDesignState();
}

final FirstApiService _firstApiService = FirstApiService();
Future<FirstApiModel>? firstApiModelData;

class _FirstApiPageDesignState extends State<FirstApiPageDesign> {
  void fetchFirstAPIData() {
    setState(() {
      firstApiModelData = _firstApiService.fetchFirstApiData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Api Page Design"),
        centerTitle: true,
      ),

      body: Center(
        // Make a future builder and pass your data to future builder
        child: FutureBuilder(
          future: firstApiModelData,
          builder: (context, snapshot) {
            // Now the snapshot has your data and all of the necessary information .
            // return the widget based on the condition or the data .

            if (snapshot.connectionState == ConnectionState.none) {
              return InkWell(
                onTap: () {
                  setState(() {
                    firstApiModelData = _firstApiService.fetchFirstApiData();
                  });
                },
                child: Container(
                  width: 200,
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  child: const Text(
                    "Fetch Data",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  ),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                // itemCount: snapshot.data,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(snapshot.data!.ability),
                    ),
                    title: Text(snapshot.data!.encounterConditionValue),
                    subtitle: Text(snapshot.data!.itemPocket),
                    trailing: Text(snapshot.data!.moveBattleStyle),
                  );
                },
              );
            }
          },
        ),
      ),

      // body: Center(
      //   child: FutureBuilder(
      //     future: firstApiModelData,
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.active ||
      //           snapshot.connectionState == ConnectionState.waiting) {
      //         return const CircularProgressIndicator();
      //       } else {
      //         if (snapshot.hasData) {
      //           return ListView.builder(
      //             itemBuilder: (context, index) {
      //               return ListTile(
      //                 leading: CircleAvatar(
      //                   child: Text(snapshot.data!.ability),
      //                 ),
      //                 title: Text(snapshot.data!.encounterCondition),
      //                 subtitle: Text(snapshot.data!.itemPocket),
      //                 trailing: Text(snapshot.data!.moveBattleStyle),
      //               );
      //             },
      //           );
      //         }
      //       }
      //       return const Text("OOs !! NO Data Found");
      //     },
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          firstApiModelData;
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutter_application_programming_interface_design/lecture_practice/json_place_holder_api/album/album_api_model.dart';
// import 'package:flutter_application_programming_interface_design/lecture_practice/json_place_holder_api/album/album_api_service.dart';

// class FetchAlbumDataDesign extends StatefulWidget {
//   const FetchAlbumDataDesign({super.key});

//   @override
//   State<FetchAlbumDataDesign> createState() => _FetchAlbumDataDesignState();
// }

// // make the final constructor for your special api provider class .
// //

// final AlbumAPiService _albumAPiService = AlbumAPiService();

// // Make a future function that will return your data
// // It will vary on your data if it is in map , list or it is in something else .

// Future<List<AlbumAPIModel>>? futureAlbumModelData;

// class _FetchAlbumDataDesignState extends State<FetchAlbumDataDesign> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("fetch Albums Data Design"),
//         centerTitle: true,
//       ),
//       body: Center(
//         // Make a future builder and pass your data to future builder
//         child: FutureBuilder(
//           future: futureAlbumModelData,
//           builder: (context, snapshot) {
//             // Now the snapshot has your data and all of the necessary information .
//             // return the widget based on the condition or the data .

//             if (snapshot.connectionState == ConnectionState.none) {
//               return InkWell(
//                 onTap: () {
//                   setState(() {
//                     futureAlbumModelData = _albumAPiService.fetchAlbums();
//                   });
//                 },
//                 child: Container(
//                   width: 200,
//                   height: 80,
//                   alignment: Alignment.center,
//                   color: Colors.yellow,
//                   child: Text(
//                     "Fetch Data",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.brown),
//                   ),
//                 ),
//               );
//             } else if (snapshot.connectionState == ConnectionState.active ||
//                 snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: CircleAvatar(
//                       child: Text(snapshot.data![index].id.toString()),
//                     ),
//                     title: Text(snapshot.data![index].title.toString()),
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
