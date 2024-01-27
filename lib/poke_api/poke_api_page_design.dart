import 'package:flutter/material.dart';
import 'package:flutter_riverpod_practice/poke_api/poke_api_service.dart';

import 'poki_api_model.dart';

class PokemonApiPageDesign extends StatefulWidget {
  const PokemonApiPageDesign({super.key});

  @override
  State<PokemonApiPageDesign> createState() => _PokemonApiPageDesignState();
}

Future<PokemonModel>? pokemonApiData;
final PokemonApiService _pokemonApiService = PokemonApiService();

class _PokemonApiPageDesignState extends State<PokemonApiPageDesign> {
  void fetchPokemonData() {
    setState(() {
      pokemonApiData = _pokemonApiService.fetchPokemonData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokemon API Page Design"),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: pokemonApiData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return InkWell(
                onTap: fetchPokemonData,
                child: Container(
                  width: 200,
                  height: 60,
                  color: Colors.amber,
                  alignment: Alignment.center,
                  child: const Text("Fetch Pokemon Data"),
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.active ||
                snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      height: 600,
                      width: double.infinity,
                      color: Colors.blue.shade300,
                      child: Column(
                        children: [
                          Text(snapshot.data!.locationAreaEncounters),
                          Text(snapshot.data!.name),
                          Text(snapshot.data!.baseExperience.toString()),
                          Text(snapshot.data!.height.toString()),
                          Text(snapshot.data!.id.toString()),
                          Text(snapshot.data!.isDefault.toString()),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return const Text("Oops !!No data found");
              }
            }
          },
        ),
      ),
    );
  }
}
