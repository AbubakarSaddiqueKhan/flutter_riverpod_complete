import 'dart:convert';

import 'package:flutter/foundation.dart';

class PokemonModel {
  List<Ability> abilities;
  int baseExperience;
  List<Species> forms;
  List<GameIndex> gameIndices;
  int height;
  List<HeldItem> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Move> moves;
  String name;
  int order;
  List<dynamic> pastAbilities;
  List<dynamic> pastTypes;
  Species species;
  Sprites sprites;
  List<Stat> stats;
  List<Type> types;
  int weight;
  PokemonModel({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastAbilities,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  // Pokemon({
  //   required this.abilities,
  //   required this.baseExperience,
  //   required this.forms,
  //   required this.gameIndices,
  //   required this.height,
  //   required this.heldItems,
  //   required this.id,
  //   required this.isDefault,
  //   required this.locationAreaEncounters,
  //   required this.moves,
  //   required this.name,
  //   required this.order,
  //   required this.pastAbilities,
  //   required this.pastTypes,
  //   required this.species,
  //   required this.sprites,
  //   required this.stats,
  //   required this.types,
  //   required this.weight,
  // });

  // Pokemon copyWith({
  //   List<Ability>? abilities,
  //   int? baseExperience,
  //   List<Species>? forms,
  //   List<GameIndex>? gameIndices,
  //   int? height,
  //   List<HeldItem>? heldItems,
  //   int? id,
  //   bool? isDefault,
  //   String? locationAreaEncounters,
  //   List<Move>? moves,
  //   String? name,
  //   int? order,
  //   List<dynamic>? pastAbilities,
  //   List<dynamic>? pastTypes,
  //   Species? species,
  //   Sprites? sprites,
  //   List<Stat>? stats,
  //   List<Type>? types,
  //   int? weight,
  // }) =>
  //     Pokemon(
  //       abilities: abilities ?? this.abilities,
  //       baseExperience: baseExperience ?? this.baseExperience,
  //       forms: forms ?? this.forms,
  //       gameIndices: gameIndices ?? this.gameIndices,
  //       height: height ?? this.height,
  //       heldItems: heldItems ?? this.heldItems,
  //       id: id ?? this.id,
  //       isDefault: isDefault ?? this.isDefault,
  //       locationAreaEncounters:
  //           locationAreaEncounters ?? this.locationAreaEncounters,
  //       moves: moves ?? this.moves,
  //       name: name ?? this.name,
  //       order: order ?? this.order,
  //       pastAbilities: pastAbilities ?? this.pastAbilities,
  //       pastTypes: pastTypes ?? this.pastTypes,
  //       species: species ?? this.species,
  //       sprites: sprites ?? this.sprites,
  //       stats: stats ?? this.stats,
  //       types: types ?? this.types,
  //       weight: weight ?? this.weight,
  //     );

  PokemonModel copyWith({
    List<Ability>? abilities,
    int? baseExperience,
    List<Species>? forms,
    List<GameIndex>? gameIndices,
    int? height,
    List<HeldItem>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    List<Move>? moves,
    String? name,
    int? order,
    List<dynamic>? pastAbilities,
    List<dynamic>? pastTypes,
    Species? species,
    Sprites? sprites,
    List<Stat>? stats,
    List<Type>? types,
    int? weight,
  }) {
    return PokemonModel(
      abilities: abilities ?? this.abilities,
      baseExperience: baseExperience ?? this.baseExperience,
      forms: forms ?? this.forms,
      gameIndices: gameIndices ?? this.gameIndices,
      height: height ?? this.height,
      heldItems: heldItems ?? this.heldItems,
      id: id ?? this.id,
      isDefault: isDefault ?? this.isDefault,
      locationAreaEncounters:
          locationAreaEncounters ?? this.locationAreaEncounters,
      moves: moves ?? this.moves,
      name: name ?? this.name,
      order: order ?? this.order,
      pastAbilities: pastAbilities ?? this.pastAbilities,
      pastTypes: pastTypes ?? this.pastTypes,
      species: species ?? this.species,
      sprites: sprites ?? this.sprites,
      stats: stats ?? this.stats,
      types: types ?? this.types,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'baseExperience': baseExperience,
      'forms': forms.map((x) => x.toMap()).toList(),
      'gameIndices': gameIndices.map((x) => x.toMap()).toList(),
      'height': height,
      'heldItems': heldItems.map((x) => x.toMap()).toList(),
      'id': id,
      'isDefault': isDefault,
      'locationAreaEncounters': locationAreaEncounters,
      'moves': moves.map((x) => x.toMap()).toList(),
      'name': name,
      'order': order,
      'pastAbilities': pastAbilities,
      'pastTypes': pastTypes,
      'species': species.toMap(),
      'sprites': sprites.toMap(),
      'stats': stats.map((x) => x.toMap()).toList(),
      'types': types.map((x) => x.toMap()).toList(),
      'weight': weight,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      abilities: List<Ability>.from(
        (map['abilities'] as List<int>).map<Ability>(
          (x) => Ability.fromMap(x as Map<String, dynamic>),
        ),
      ),
      baseExperience: map['base_experience'] as int,
      forms: List<Species>.from(
        (map['forms'] as List<int>).map<Species>(
          (x) => Species.fromMap(x as Map<String, dynamic>),
        ),
      ),
      gameIndices: List<GameIndex>.from(
        (map['game_indices'] as List<int>).map<GameIndex>(
          (x) => GameIndex.fromMap(x as Map<String, dynamic>),
        ),
      ),
      height: map['height'] as int,
      heldItems: List<HeldItem>.from(
        (map['held_items'] as List<int>).map<HeldItem>(
          (x) => HeldItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      id: map['id'] as int,
      isDefault: map['is_default'] as bool,
      locationAreaEncounters: map['location_area_encounters'] as String,
      moves: List<Move>.from(
        (map['moves'] as List<int>).map<Move>(
          (x) => Move.fromMap(x as Map<String, dynamic>),
        ),
      ),
      name: map['name'] as String,
      order: map['order'] as int,
      pastAbilities:
          List<dynamic>.from((map['past_abilities'] as List<dynamic>)),
      pastTypes: List<dynamic>.from((map['past_types'] as List<dynamic>)),
      species: Species.fromMap(map['species'] as Map<String, dynamic>),
      sprites: Sprites.fromMap(map['sprites'] as Map<String, dynamic>),
      stats: List<Stat>.from(
        (map['stats'] as List<int>).map<Stat>(
          (x) => Stat.fromMap(x as Map<String, dynamic>),
        ),
      ),
      types: List<Type>.from(
        (map['types'] as List<int>).map<Type>(
          (x) => Type.fromMap(x as Map<String, dynamic>),
        ),
      ),
      weight: map['weight'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) =>
      PokemonModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pokemon(abilities: $abilities, base_experience: $baseExperience, forms: $forms, gameIndices: $gameIndices, height: $height, heldItems: $heldItems, id: $id, isDefault: $isDefault, locationAreaEncounters: $locationAreaEncounters, moves: $moves, name: $name, order: $order, pastAbilities: $pastAbilities, pastTypes: $pastTypes, species: $species, sprites: $sprites, stats: $stats, types: $types, weight: $weight)';
  }

  @override
  bool operator ==(covariant PokemonModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.abilities, abilities) &&
        other.baseExperience == baseExperience &&
        listEquals(other.forms, forms) &&
        listEquals(other.gameIndices, gameIndices) &&
        other.height == height &&
        listEquals(other.heldItems, heldItems) &&
        other.id == id &&
        other.isDefault == isDefault &&
        other.locationAreaEncounters == locationAreaEncounters &&
        listEquals(other.moves, moves) &&
        other.name == name &&
        other.order == order &&
        listEquals(other.pastAbilities, pastAbilities) &&
        listEquals(other.pastTypes, pastTypes) &&
        other.species == species &&
        other.sprites == sprites &&
        listEquals(other.stats, stats) &&
        listEquals(other.types, types) &&
        other.weight == weight;
  }

  @override
  int get hashCode {
    return abilities.hashCode ^
        baseExperience.hashCode ^
        forms.hashCode ^
        gameIndices.hashCode ^
        height.hashCode ^
        heldItems.hashCode ^
        id.hashCode ^
        isDefault.hashCode ^
        locationAreaEncounters.hashCode ^
        moves.hashCode ^
        name.hashCode ^
        order.hashCode ^
        pastAbilities.hashCode ^
        pastTypes.hashCode ^
        species.hashCode ^
        sprites.hashCode ^
        stats.hashCode ^
        types.hashCode ^
        weight.hashCode;
  }
}

class Ability {
  Species ability;
  bool isHidden;
  int slot;
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  // Ability({
  //   required this.ability,
  //   required this.isHidden,
  //   required this.slot,
  // });

  // Ability copyWith({
  //   Species? ability,
  //   bool? isHidden,
  //   int? slot,
  // }) =>
  //     Ability(
  //       ability: ability ?? this.ability,
  //       isHidden: isHidden ?? this.isHidden,
  //       slot: slot ?? this.slot,
  //     );

  Ability copyWith({
    Species? ability,
    bool? isHidden,
    int? slot,
  }) {
    return Ability(
      ability: ability ?? this.ability,
      isHidden: isHidden ?? this.isHidden,
      slot: slot ?? this.slot,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ability': ability.toMap(),
      'isHidden': isHidden,
      'slot': slot,
    };
  }

  factory Ability.fromMap(Map<String, dynamic> map) {
    return Ability(
      ability: Species.fromMap(map['ability'] as Map<String, dynamic>),
      isHidden: map['is_hidden'] as bool,
      slot: map['slot'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ability.fromJson(String source) =>
      Ability.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Ability(ability: $ability, isHidden: $isHidden, slot: $slot)';

  @override
  bool operator ==(covariant Ability other) {
    if (identical(this, other)) return true;

    return other.ability == ability &&
        other.isHidden == isHidden &&
        other.slot == slot;
  }

  @override
  int get hashCode => ability.hashCode ^ isHidden.hashCode ^ slot.hashCode;
}

class Species {
  String name;
  String url;
  Species({
    required this.name,
    required this.url,
  });

  // Species({
  //   required this.name,
  //   required this.url,
  // });

  // Species copyWith({
  //   String? name,
  //   String? url,
  // }) =>
  //     Species(
  //       name: name ?? this.name,
  //       url: url ?? this.url,
  //     );

  Species copyWith({
    String? name,
    String? url,
  }) {
    return Species(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory Species.fromMap(Map<String, dynamic> map) {
    return Species(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Species.fromJson(String source) =>
      Species.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Species(name: $name, url: $url)';

  @override
  bool operator ==(covariant Species other) {
    if (identical(this, other)) return true;

    return other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

class GameIndex {
  int gameIndex;
  Species version;
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  // GameIndex({
  //   required this.gameIndex,
  //   required this.version,
  // });

  // GameIndex copyWith({
  //   int? gameIndex,
  //   Species? version,
  // }) =>
  //     GameIndex(
  //       gameIndex: gameIndex ?? this.gameIndex,
  //       version: version ?? this.version,
  //     );

  GameIndex copyWith({
    int? gameIndex,
    Species? version,
  }) {
    return GameIndex(
      gameIndex: gameIndex ?? this.gameIndex,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gameIndex': gameIndex,
      'version': version.toMap(),
    };
  }

  factory GameIndex.fromMap(Map<String, dynamic> map) {
    return GameIndex(
      gameIndex: map['game_index'] as int,
      version: Species.fromMap(map['version'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GameIndex.fromJson(String source) =>
      GameIndex.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GameIndex(game_index: $gameIndex, version: $version)';

  @override
  bool operator ==(covariant GameIndex other) {
    if (identical(this, other)) return true;

    return other.gameIndex == gameIndex && other.version == version;
  }

  @override
  int get hashCode => gameIndex.hashCode ^ version.hashCode;
}

class HeldItem {
  Species item;
  List<VersionDetail> versionDetails;
  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  // HeldItem({
  //   required this.item,
  //   required this.versionDetails,
  // });

  // HeldItem copyWith({
  //   Species? item,
  //   List<VersionDetail>? versionDetails,
  // }) =>
  //     HeldItem(
  //       item: item ?? this.item,
  //       versionDetails: versionDetails ?? this.versionDetails,
  //     );

  HeldItem copyWith({
    Species? item,
    List<VersionDetail>? versionDetails,
  }) {
    return HeldItem(
      item: item ?? this.item,
      versionDetails: versionDetails ?? this.versionDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'item': item.toMap(),
      'versionDetails': versionDetails.map((x) => x.toMap()).toList(),
    };
  }

  factory HeldItem.fromMap(Map<String, dynamic> map) {
    return HeldItem(
      item: Species.fromMap(map['item'] as Map<String, dynamic>),
      versionDetails: List<VersionDetail>.from(
        (map['version_details'] as List<int>).map<VersionDetail>(
          (x) => VersionDetail.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory HeldItem.fromJson(String source) =>
      HeldItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'HeldItem(item: $item, versionDetails: $versionDetails)';

  @override
  bool operator ==(covariant HeldItem other) {
    if (identical(this, other)) return true;

    return other.item == item &&
        listEquals(other.versionDetails, versionDetails);
  }

  @override
  int get hashCode => item.hashCode ^ versionDetails.hashCode;
}

class VersionDetail {
  int rarity;
  Species version;
  VersionDetail({
    required this.rarity,
    required this.version,
  });

  // VersionDetail({
  //   required this.rarity,
  //   required this.version,
  // });

  // VersionDetail copyWith({
  //   int? rarity,
  //   Species? version,
  // }) =>
  //     VersionDetail(
  //       rarity: rarity ?? this.rarity,
  //       version: version ?? this.version,
  //     );

  VersionDetail copyWith({
    int? rarity,
    Species? version,
  }) {
    return VersionDetail(
      rarity: rarity ?? this.rarity,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rarity': rarity,
      'version': version.toMap(),
    };
  }

  factory VersionDetail.fromMap(Map<String, dynamic> map) {
    return VersionDetail(
      rarity: map['rarity'] as int,
      version: Species.fromMap(map['version'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionDetail.fromJson(String source) =>
      VersionDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'VersionDetail(rarity: $rarity, version: $version)';

  @override
  bool operator ==(covariant VersionDetail other) {
    if (identical(this, other)) return true;

    return other.rarity == rarity && other.version == version;
  }

  @override
  int get hashCode => rarity.hashCode ^ version.hashCode;
}

class Move {
  Species move;
  List<VersionGroupDetail> versionGroupDetails;
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

//   Move({
//     required this.move,
//     required this.versionGroupDetails,
//   });

//   Move copyWith({
//     Species? move,
//     List<VersionGroupDetail>? versionGroupDetails,
//   }) =>
//       Move(
//         move: move ?? this.move,
//         versionGroupDetails: versionGroupDetails ?? this.versionGroupDetails,
//       );

  Move copyWith({
    Species? move,
    List<VersionGroupDetail>? versionGroupDetails,
  }) {
    return Move(
      move: move ?? this.move,
      versionGroupDetails: versionGroupDetails ?? this.versionGroupDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'move': move.toMap(),
      'versionGroupDetails': versionGroupDetails.map((x) => x.toMap()).toList(),
    };
  }

  factory Move.fromMap(Map<String, dynamic> map) {
    return Move(
      move: Species.fromMap(map['move'] as Map<String, dynamic>),
      versionGroupDetails: List<VersionGroupDetail>.from(
        (map['version_group_details'] as List<int>).map<VersionGroupDetail>(
          (x) => VersionGroupDetail.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Move.fromJson(String source) =>
      Move.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Move(move: $move, versionGroupDetails: $versionGroupDetails)';

  @override
  bool operator ==(covariant Move other) {
    if (identical(this, other)) return true;

    return other.move == move &&
        listEquals(other.versionGroupDetails, versionGroupDetails);
  }

  @override
  int get hashCode => move.hashCode ^ versionGroupDetails.hashCode;
}

class VersionGroupDetail {
  int levelLearnedAt;
  Species moveLearnMethod;
  Species versionGroup;
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  // VersionGroupDetail({
  //   required this.levelLearnedAt,
  //   required this.moveLearnMethod,
  //   required this.versionGroup,
  // });

  // VersionGroupDetail copyWith({
  //   int? levelLearnedAt,
  //   Species? moveLearnMethod,
  //   Species? versionGroup,
  // }) =>
  //     VersionGroupDetail(
  //       levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
  //       moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
  //       versionGroup: versionGroup ?? this.versionGroup,
  //     );

  VersionGroupDetail copyWith({
    int? levelLearnedAt,
    Species? moveLearnMethod,
    Species? versionGroup,
  }) {
    return VersionGroupDetail(
      levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
      moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
      versionGroup: versionGroup ?? this.versionGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'levelLearnedAt': levelLearnedAt,
      'moveLearnMethod': moveLearnMethod.toMap(),
      'versionGroup': versionGroup.toMap(),
    };
  }

  factory VersionGroupDetail.fromMap(Map<String, dynamic> map) {
    return VersionGroupDetail(
      levelLearnedAt: map['level_learned_at'] as int,
      moveLearnMethod:
          Species.fromMap(map['move_learn_method'] as Map<String, dynamic>),
      versionGroup:
          Species.fromMap(map['version_group'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory VersionGroupDetail.fromJson(String source) =>
      VersionGroupDetail.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'VersionGroupDetail(levelLearnedAt: $levelLearnedAt, moveLearnMethod: $moveLearnMethod, versionGroup: $versionGroup)';

  @override
  bool operator ==(covariant VersionGroupDetail other) {
    if (identical(this, other)) return true;

    return other.levelLearnedAt == levelLearnedAt &&
        other.moveLearnMethod == moveLearnMethod &&
        other.versionGroup == versionGroup;
  }

  @override
  int get hashCode =>
      levelLearnedAt.hashCode ^
      moveLearnMethod.hashCode ^
      versionGroup.hashCode;
}

class GenerationV {
  Sprites blackWhite;
  GenerationV({
    required this.blackWhite,
  });

  // GenerationV({
  //   required this.blackWhite,
  // });

  // GenerationV copyWith({
  //   Sprites? blackWhite,
  // }) =>
  //     GenerationV(
  //       blackWhite: blackWhite ?? this.blackWhite,
  //     );

  GenerationV copyWith({
    Sprites? blackWhite,
  }) {
    return GenerationV(
      blackWhite: blackWhite ?? this.blackWhite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackWhite': blackWhite.toMap(),
    };
  }

  factory GenerationV.fromMap(Map<String, dynamic> map) {
    return GenerationV(
      blackWhite: Sprites.fromMap(map['black-white'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationV.fromJson(String source) =>
      GenerationV.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GenerationV(black-white: $blackWhite)';

  @override
  bool operator ==(covariant GenerationV other) {
    if (identical(this, other)) return true;

    return other.blackWhite == blackWhite;
  }

  @override
  int get hashCode => blackWhite.hashCode;
}

class GenerationIv {
  Sprites diamondPearl;
  Sprites heartgoldSoulsilver;
  Sprites platinum;
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  // GenerationIv({
  //   required this.diamondPearl,
  //   required this.heartgoldSoulsilver,
  //   required this.platinum,
  // });

  // GenerationIv copyWith({
  //   Sprites? diamondPearl,
  //   Sprites? heartgoldSoulsilver,
  //   Sprites? platinum,
  // }) =>
  //     GenerationIv(
  //       diamondPearl: diamondPearl ?? this.diamondPearl,
  //       heartgoldSoulsilver: heartgoldSoulsilver ?? this.heartgoldSoulsilver,
  //       platinum: platinum ?? this.platinum,
  //     );

  GenerationIv copyWith({
    Sprites? diamondPearl,
    Sprites? heartgoldSoulsilver,
    Sprites? platinum,
  }) {
    return GenerationIv(
      diamondPearl: diamondPearl ?? this.diamondPearl,
      heartgoldSoulsilver: heartgoldSoulsilver ?? this.heartgoldSoulsilver,
      platinum: platinum ?? this.platinum,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diamond-pearl': diamondPearl.toMap(),
      'heartgold-soulsilver': heartgoldSoulsilver.toMap(),
      'platinum': platinum.toMap(),
    };
  }

  factory GenerationIv.fromMap(Map<String, dynamic> map) {
    return GenerationIv(
      diamondPearl:
          Sprites.fromMap(map['diamond-pearl'] as Map<String, dynamic>),
      heartgoldSoulsilver:
          Sprites.fromMap(map['heartgold-soulsilver'] as Map<String, dynamic>),
      platinum: Sprites.fromMap(map['platinum'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationIv.fromJson(String source) =>
      GenerationIv.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'GenerationIv(diamondPearl: $diamondPearl, heartgoldSoulsilver: $heartgoldSoulsilver, platinum: $platinum)';

  @override
  bool operator ==(covariant GenerationIv other) {
    if (identical(this, other)) return true;

    return other.diamondPearl == diamondPearl &&
        other.heartgoldSoulsilver == heartgoldSoulsilver &&
        other.platinum == platinum;
  }

  @override
  int get hashCode =>
      diamondPearl.hashCode ^ heartgoldSoulsilver.hashCode ^ platinum.hashCode;
}

class Versions {
  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  Map<String, Home> generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  // Versions({
  //   required this.generationI,
  //   required this.generationIi,
  //   required this.generationIii,
  //   required this.generationIv,
  //   required this.generationV,
  //   required this.generationVi,
  //   required this.generationVii,
  //   required this.generationViii,
  // });

  // Versions copyWith({
  //   GenerationI? generationI,
  //   GenerationIi? generationIi,
  //   GenerationIii? generationIii,
  //   GenerationIv? generationIv,
  //   GenerationV? generationV,
  //   Map<String, Home>? generationVi,
  //   GenerationVii? generationVii,
  //   GenerationViii? generationViii,
  // }) =>
  //     Versions(
  //       generationI: generationI ?? this.generationI,
  //       generationIi: generationIi ?? this.generationIi,
  //       generationIii: generationIii ?? this.generationIii,
  //       generationIv: generationIv ?? this.generationIv,
  //       generationV: generationV ?? this.generationV,
  //       generationVi: generationVi ?? this.generationVi,
  //       generationVii: generationVii ?? this.generationVii,
  //       generationViii: generationViii ?? this.generationViii,
  //     );

  Versions copyWith({
    GenerationI? generationI,
    GenerationIi? generationIi,
    GenerationIii? generationIii,
    GenerationIv? generationIv,
    GenerationV? generationV,
    Map<String, Home>? generationVi,
    GenerationVii? generationVii,
    GenerationViii? generationViii,
  }) {
    return Versions(
      generationI: generationI ?? this.generationI,
      generationIi: generationIi ?? this.generationIi,
      generationIii: generationIii ?? this.generationIii,
      generationIv: generationIv ?? this.generationIv,
      generationV: generationV ?? this.generationV,
      generationVi: generationVi ?? this.generationVi,
      generationVii: generationVii ?? this.generationVii,
      generationViii: generationViii ?? this.generationViii,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generationI': generationI.toMap(),
      'generationIi': generationIi.toMap(),
      'generationIii': generationIii.toMap(),
      'generationIv': generationIv.toMap(),
      'generationV': generationV.toMap(),
      'generationVi': generationVi,
      'generationVii': generationVii.toMap(),
      'generationViii': generationViii.toMap(),
    };
  }

  factory Versions.fromMap(Map<String, dynamic> map) {
    return Versions(
      generationI:
          GenerationI.fromMap(map['generation-i'] as Map<String, dynamic>),
      generationIi:
          GenerationIi.fromMap(map['generation-ii'] as Map<String, dynamic>),
      generationIii:
          GenerationIii.fromMap(map['generation-iii'] as Map<String, dynamic>),
      generationIv:
          GenerationIv.fromMap(map['generation-iv'] as Map<String, dynamic>),
      generationV:
          GenerationV.fromMap(map['generation-v'] as Map<String, dynamic>),
      generationVi:
          Map<String, Home>.from((map['generation-vi'] as Map<String, Home>)),
      generationVii:
          GenerationVii.fromMap(map['generation-vii'] as Map<String, dynamic>),
      generationViii: GenerationViii.fromMap(
          map['generation-viii'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Versions.fromJson(String source) =>
      Versions.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Versions(generationI: $generationI, generationIi: $generationIi, generationIii: $generationIii, generationIv: $generationIv, generationV: $generationV, generationVi: $generationVi, generationVii: $generationVii, generationViii: $generationViii)';
  }

  @override
  bool operator ==(covariant Versions other) {
    if (identical(this, other)) return true;

    return other.generationI == generationI &&
        other.generationIi == generationIi &&
        other.generationIii == generationIii &&
        other.generationIv == generationIv &&
        other.generationV == generationV &&
        mapEquals(other.generationVi, generationVi) &&
        other.generationVii == generationVii &&
        other.generationViii == generationViii;
  }

  @override
  int get hashCode {
    return generationI.hashCode ^
        generationIi.hashCode ^
        generationIii.hashCode ^
        generationIv.hashCode ^
        generationV.hashCode ^
        generationVi.hashCode ^
        generationVii.hashCode ^
        generationViii.hashCode;
  }
}

class Sprites {
  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
  Other other;
  Versions versions;
  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  // Sprites({
  //   required this.backDefault,
  //   required this.backFemale,
  //   required this.backShiny,
  //   required this.backShinyFemale,
  //   required this.frontDefault,
  //   required this.frontFemale,
  //   required this.frontShiny,
  //   required this.frontShinyFemale,
  //   required this.other,
  //   required this.versions,
  // });
  // Sprites animated;

  // // Sprites({
  // //   required this.backDefault,
  // //   required this.backFemale,
  // //   required this.backShiny,
  // //   required this.backShinyFemale,
  // //   required this.frontDefault,
  // //   required this.frontFemale,
  // //   required this.frontShiny,
  // //   required this.frontShinyFemale,
  // //   required this.other,
  // //   required this.versions,
  // //   required this.animated,
  // // });

  // // Sprites copyWith({
  // //   String? backDefault,
  // //   dynamic backFemale,
  // //   String? backShiny,
  // //   dynamic backShinyFemale,
  // //   String? frontDefault,
  // //   dynamic frontFemale,
  // //   String? frontShiny,
  // //   dynamic frontShinyFemale,
  // //   Other? other,
  // //   Versions? versions,
  // //   Sprites? animated,
  // // }) =>
  // //     Sprites(
  // //       backDefault: backDefault ?? this.backDefault,
  // //       backFemale: backFemale ?? this.backFemale,
  // //       backShiny: backShiny ?? this.backShiny,
  // //       backShinyFemale: backShinyFemale ?? this.backShinyFemale,
  // //       frontDefault: frontDefault ?? this.frontDefault,
  // //       frontFemale: frontFemale ?? this.frontFemale,
  // //       frontShiny: frontShiny ?? this.frontShiny,
  // //       frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
  // //       other: other ?? this.other,
  // //       versions: versions ?? this.versions,
  // //       animated: animated ?? this.animated,
  // //     );

  // Sprites copyWith({
  //   String? backDefault,
  //   dynamic? backFemale,
  //   String? backShiny,
  //   dynamic? backShinyFemale,
  //   String? frontDefault,
  //   dynamic? frontFemale,
  //   String? frontShiny,
  //   dynamic? frontShinyFemale,
  //   Other? other,
  //   Versions? versions,
  // }) {
  //   return Sprites(
  //     backDefault: backDefault ?? this.backDefault,
  //     backFemale: backFemale ?? this.backFemale,
  //     backShiny: backShiny ?? this.backShiny,
  //     backShinyFemale: backShinyFemale ?? this.backShinyFemale,
  //     frontDefault: frontDefault ?? this.frontDefault,
  //     frontFemale: frontFemale ?? this.frontFemale,
  //     frontShiny: frontShiny ?? this.frontShiny,
  //     frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
  //     other: other ?? this.other,
  //     versions: versions ?? this.versions,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'backDefault': backDefault,
  //     'backFemale': backFemale,
  //     'backShiny': backShiny,
  //     'backShinyFemale': backShinyFemale,
  //     'frontDefault': frontDefault,
  //     'frontFemale': frontFemale,
  //     'frontShiny': frontShiny,
  //     'frontShinyFemale': frontShinyFemale,
  //     'other': other.toMap(),
  //     'versions': versions.toMap(),
  //   };
  // }

  // factory Sprites.fromMap(Map<String, dynamic> map) {
  //   return Sprites(
  //     backDefault: map['backDefault'] as String,
  //     backFemale: map['backFemale'] as dynamic,
  //     backShiny: map['backShiny'] as String,
  //     backShinyFemale: map['backShinyFemale'] as dynamic,
  //     frontDefault: map['frontDefault'] as String,
  //     frontFemale: map['frontFemale'] as dynamic,
  //     frontShiny: map['frontShiny'] as String,
  //     frontShinyFemale: map['frontShinyFemale'] as dynamic,
  //     other: Other.fromMap(map['other'] as Map<String,dynamic>),
  //     versions: Versions.fromMap(map['versions'] as Map<String,dynamic>),
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory Sprites.fromJson(String source) => Sprites.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions)';
  // }

  // @override
  // bool operator ==(covariant Sprites other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.backDefault == backDefault &&
  //     other.backFemale == backFemale &&
  //     other.backShiny == backShiny &&
  //     other.backShinyFemale == backShinyFemale &&
  //     other.frontDefault == frontDefault &&
  //     other.frontFemale == frontFemale &&
  //     other.frontShiny == frontShiny &&
  //     other.frontShinyFemale == frontShinyFemale &&
  //     other.other == other &&
  //     other.versions == versions;
  // }

  // @override
  // int get hashCode {
  //   return backDefault.hashCode ^
  //     backFemale.hashCode ^
  //     backShiny.hashCode ^
  //     backShinyFemale.hashCode ^
  //     frontDefault.hashCode ^
  //     frontFemale.hashCode ^
  //     frontShiny.hashCode ^
  //     frontShinyFemale.hashCode ^
  //     other.hashCode ^
  //     versions.hashCode;
  // }

  Sprites copyWith({
    String? backDefault,
    dynamic? backFemale,
    String? backShiny,
    dynamic? backShinyFemale,
    String? frontDefault,
    dynamic? frontFemale,
    String? frontShiny,
    dynamic? frontShinyFemale,
    Other? other,
    Versions? versions,
  }) {
    return Sprites(
      backDefault: backDefault ?? this.backDefault,
      backFemale: backFemale ?? this.backFemale,
      backShiny: backShiny ?? this.backShiny,
      backShinyFemale: backShinyFemale ?? this.backShinyFemale,
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
      other: other ?? this.other,
      versions: versions ?? this.versions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backDefault': backDefault,
      'backFemale': backFemale,
      'backShiny': backShiny,
      'backShinyFemale': backShinyFemale,
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
      'other': other.toMap(),
      'versions': versions.toMap(),
    };
  }

  factory Sprites.fromMap(Map<String, dynamic> map) {
    return Sprites(
      backDefault: map['back_default'] as String,
      backFemale: map['back_female'] as dynamic,
      backShiny: map['back_shiny'] as String,
      backShinyFemale: map['back_shiny_female'] as dynamic,
      frontDefault: map['front_default'] as String,
      frontFemale: map['front_female'] as dynamic,
      frontShiny: map['front_shiny'] as String,
      frontShinyFemale: map['front_shiny_female'] as dynamic,
      other: Other.fromMap(map['other'] as Map<String, dynamic>),
      versions: Versions.fromMap(map['versions'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Sprites.fromJson(String source) =>
      Sprites.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Sprites(backDefault: $backDefault, backFemale: $backFemale, backShiny: $backShiny, backShinyFemale: $backShinyFemale, frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale, other: $other, versions: $versions)';
  }

  // @override
  // bool operator ==(covariant Sprites other) {
  //   if (identical(this, other)) return true;

  //   return
  //     other.backDefault == backDefault &&
  //     other.backFemale == backFemale &&
  //     other.backShiny == backShiny &&
  //     other.backShinyFemale == backShinyFemale &&
  //     other.frontDefault == frontDefault &&
  //     other.frontFemale == frontFemale &&
  //     other.frontShiny == frontShiny &&
  //     other.frontShinyFemale == frontShinyFemale &&
  //     other.other == other &&
  //     other.versions == versions;
  // }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backFemale.hashCode ^
        backShiny.hashCode ^
        backShinyFemale.hashCode ^
        frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode ^
        other.hashCode ^
        versions.hashCode;
  }
}

class GenerationI {
  RedBlue redBlue;
  RedBlue yellow;
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  // GenerationI({
  //   required this.redBlue,
  //   required this.yellow,
  // });

  // GenerationI copyWith({
  //   RedBlue? redBlue,
  //   RedBlue? yellow,
  // }) =>
  //     GenerationI(
  //       redBlue: redBlue ?? this.redBlue,
  //       yellow: yellow ?? this.yellow,
  //     );

  GenerationI copyWith({
    RedBlue? redBlue,
    RedBlue? yellow,
  }) {
    return GenerationI(
      redBlue: redBlue ?? this.redBlue,
      yellow: yellow ?? this.yellow,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redBlue': redBlue.toMap(),
      'yellow': yellow.toMap(),
    };
  }

  factory GenerationI.fromMap(Map<String, dynamic> map) {
    return GenerationI(
      redBlue: RedBlue.fromMap(map['red-blue'] as Map<String, dynamic>),
      yellow: RedBlue.fromMap(map['yellow'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationI.fromJson(String source) =>
      GenerationI.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GenerationI(redBlue: $redBlue, yellow: $yellow)';

  @override
  bool operator ==(covariant GenerationI other) {
    if (identical(this, other)) return true;

    return other.redBlue == redBlue && other.yellow == yellow;
  }

  @override
  int get hashCode => redBlue.hashCode ^ yellow.hashCode;
}

class RedBlue {
  String backDefault;
  String backGray;
  String backTransparent;
  String frontDefault;
  String frontGray;
  String frontTransparent;
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  // RedBlue({
  //   required this.backDefault,
  //   required this.backGray,
  //   required this.backTransparent,
  //   required this.frontDefault,
  //   required this.frontGray,
  //   required this.frontTransparent,
  // });

  // RedBlue copyWith({
  //   String? backDefault,
  //   String? backGray,
  //   String? backTransparent,
  //   String? frontDefault,
  //   String? frontGray,
  //   String? frontTransparent,
  // }) =>
  //     RedBlue(
  //       backDefault: backDefault ?? this.backDefault,
  //       backGray: backGray ?? this.backGray,
  //       backTransparent: backTransparent ?? this.backTransparent,
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontGray: frontGray ?? this.frontGray,
  //       frontTransparent: frontTransparent ?? this.frontTransparent,
  //     );

  RedBlue copyWith({
    String? backDefault,
    String? backGray,
    String? backTransparent,
    String? frontDefault,
    String? frontGray,
    String? frontTransparent,
  }) {
    return RedBlue(
      backDefault: backDefault ?? this.backDefault,
      backGray: backGray ?? this.backGray,
      backTransparent: backTransparent ?? this.backTransparent,
      frontDefault: frontDefault ?? this.frontDefault,
      frontGray: frontGray ?? this.frontGray,
      frontTransparent: frontTransparent ?? this.frontTransparent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backDefault': backDefault,
      'backGray': backGray,
      'backTransparent': backTransparent,
      'frontDefault': frontDefault,
      'frontGray': frontGray,
      'frontTransparent': frontTransparent,
    };
  }

  factory RedBlue.fromMap(Map<String, dynamic> map) {
    return RedBlue(
      backDefault: map['back_default'] as String,
      backGray: map['back_gray'] as String,
      backTransparent: map['back_transparent'] as String,
      frontDefault: map['front_default'] as String,
      frontGray: map['front_gray'] as String,
      frontTransparent: map['front_transparent'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RedBlue.fromJson(String source) =>
      RedBlue.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RedBlue(backDefault: $backDefault, backGray: $backGray, backTransparent: $backTransparent, frontDefault: $frontDefault, frontGray: $frontGray, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(covariant RedBlue other) {
    if (identical(this, other)) return true;

    return other.backDefault == backDefault &&
        other.backGray == backGray &&
        other.backTransparent == backTransparent &&
        other.frontDefault == frontDefault &&
        other.frontGray == frontGray &&
        other.frontTransparent == frontTransparent;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backGray.hashCode ^
        backTransparent.hashCode ^
        frontDefault.hashCode ^
        frontGray.hashCode ^
        frontTransparent.hashCode;
  }
}

class GenerationIi {
  Crystal crystal;
  Gold gold;
  Gold silver;
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  // GenerationIi({
  //   required this.crystal,
  //   required this.gold,
  //   required this.silver,
  // });

  // GenerationIi copyWith({
  //   Crystal? crystal,
  //   Gold? gold,
  //   Gold? silver,
  // }) =>
  //     GenerationIi(
  //       crystal: crystal ?? this.crystal,
  //       gold: gold ?? this.gold,
  //       silver: silver ?? this.silver,
  //     );

  GenerationIi copyWith({
    Crystal? crystal,
    Gold? gold,
    Gold? silver,
  }) {
    return GenerationIi(
      crystal: crystal ?? this.crystal,
      gold: gold ?? this.gold,
      silver: silver ?? this.silver,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crystal': crystal.toMap(),
      'gold': gold.toMap(),
      'silver': silver.toMap(),
    };
  }

  factory GenerationIi.fromMap(Map<String, dynamic> map) {
    return GenerationIi(
      crystal: Crystal.fromMap(map['crystal'] as Map<String, dynamic>),
      gold: Gold.fromMap(map['gold'] as Map<String, dynamic>),
      silver: Gold.fromMap(map['silver'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationIi.fromJson(String source) =>
      GenerationIi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'GenerationIi(crystal: $crystal, gold: $gold, silver: $silver)';

  @override
  bool operator ==(covariant GenerationIi other) {
    if (identical(this, other)) return true;

    return other.crystal == crystal &&
        other.gold == gold &&
        other.silver == silver;
  }

  @override
  int get hashCode => crystal.hashCode ^ gold.hashCode ^ silver.hashCode;
}

class Crystal {
  String backDefault;
  String backShiny;
  String backShinyTransparent;
  String backTransparent;
  String frontDefault;
  String frontShiny;
  String frontShinyTransparent;
  String frontTransparent;
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  // Crystal({
  //   required this.backDefault,
  //   required this.backShiny,
  //   required this.backShinyTransparent,
  //   required this.backTransparent,
  //   required this.frontDefault,
  //   required this.frontShiny,
  //   required this.frontShinyTransparent,
  //   required this.frontTransparent,
  // });

  // Crystal copyWith({
  //   String? backDefault,
  //   String? backShiny,
  //   String? backShinyTransparent,
  //   String? backTransparent,
  //   String? frontDefault,
  //   String? frontShiny,
  //   String? frontShinyTransparent,
  //   String? frontTransparent,
  // }) =>
  //     Crystal(
  //       backDefault: backDefault ?? this.backDefault,
  //       backShiny: backShiny ?? this.backShiny,
  //       backShinyTransparent: backShinyTransparent ?? this.backShinyTransparent,
  //       backTransparent: backTransparent ?? this.backTransparent,
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontShiny: frontShiny ?? this.frontShiny,
  //       frontShinyTransparent:
  //           frontShinyTransparent ?? this.frontShinyTransparent,
  //       frontTransparent: frontTransparent ?? this.frontTransparent,
  //     );

  Crystal copyWith({
    String? backDefault,
    String? backShiny,
    String? backShinyTransparent,
    String? backTransparent,
    String? frontDefault,
    String? frontShiny,
    String? frontShinyTransparent,
    String? frontTransparent,
  }) {
    return Crystal(
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      backShinyTransparent: backShinyTransparent ?? this.backShinyTransparent,
      backTransparent: backTransparent ?? this.backTransparent,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyTransparent:
          frontShinyTransparent ?? this.frontShinyTransparent,
      frontTransparent: frontTransparent ?? this.frontTransparent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backDefault': backDefault,
      'backShiny': backShiny,
      'backShinyTransparent': backShinyTransparent,
      'backTransparent': backTransparent,
      'frontDefault': frontDefault,
      'frontShiny': frontShiny,
      'frontShinyTransparent': frontShinyTransparent,
      'frontTransparent': frontTransparent,
    };
  }

  factory Crystal.fromMap(Map<String, dynamic> map) {
    return Crystal(
      backDefault: map['back_default'] as String,
      backShiny: map['back_shiny'] as String,
      backShinyTransparent: map['back_shiny_transparent'] as String,
      backTransparent: map['back_transparent'] as String,
      frontDefault: map['front_default'] as String,
      frontShiny: map['front_shiny'] as String,
      frontShinyTransparent: map['front_shiny_transparent'] as String,
      frontTransparent: map['front_transparent'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Crystal.fromJson(String source) =>
      Crystal.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Crystal(backDefault: $backDefault, backShiny: $backShiny, backShinyTransparent: $backShinyTransparent, backTransparent: $backTransparent, frontDefault: $frontDefault, frontShiny: $frontShiny, frontShinyTransparent: $frontShinyTransparent, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(covariant Crystal other) {
    if (identical(this, other)) return true;

    return other.backDefault == backDefault &&
        other.backShiny == backShiny &&
        other.backShinyTransparent == backShinyTransparent &&
        other.backTransparent == backTransparent &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny &&
        other.frontShinyTransparent == frontShinyTransparent &&
        other.frontTransparent == frontTransparent;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backShiny.hashCode ^
        backShinyTransparent.hashCode ^
        backTransparent.hashCode ^
        frontDefault.hashCode ^
        frontShiny.hashCode ^
        frontShinyTransparent.hashCode ^
        frontTransparent.hashCode;
  }
}

class Gold {
  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;
  String frontTransparent;
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  // Gold({
  //   required this.backDefault,
  //   required this.backShiny,
  //   required this.frontDefault,
  //   required this.frontShiny,
  //   required this.frontTransparent,
  // });

  // Gold copyWith({
  //   String? backDefault,
  //   String? backShiny,
  //   String? frontDefault,
  //   String? frontShiny,
  //   String? frontTransparent,
  // }) =>
  //     Gold(
  //       backDefault: backDefault ?? this.backDefault,
  //       backShiny: backShiny ?? this.backShiny,
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontShiny: frontShiny ?? this.frontShiny,
  //       frontTransparent: frontTransparent ?? this.frontTransparent,
  //     );

  Gold copyWith({
    String? backDefault,
    String? backShiny,
    String? frontDefault,
    String? frontShiny,
    String? frontTransparent,
  }) {
    return Gold(
      backDefault: backDefault ?? this.backDefault,
      backShiny: backShiny ?? this.backShiny,
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
      frontTransparent: frontTransparent ?? this.frontTransparent,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backDefault': backDefault,
      'backShiny': backShiny,
      'frontDefault': frontDefault,
      'frontShiny': frontShiny,
      'frontTransparent': frontTransparent,
    };
  }

  factory Gold.fromMap(Map<String, dynamic> map) {
    return Gold(
      backDefault: map['back_default'] as String,
      backShiny: map['back_shiny'] as String,
      frontDefault: map['front_default'] as String,
      frontShiny: map['front_shiny'] as String,
      frontTransparent: map['front_transparent'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Gold.fromJson(String source) =>
      Gold.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Gold(backDefault: $backDefault, backShiny: $backShiny, frontDefault: $frontDefault, frontShiny: $frontShiny, frontTransparent: $frontTransparent)';
  }

  @override
  bool operator ==(covariant Gold other) {
    if (identical(this, other)) return true;

    return other.backDefault == backDefault &&
        other.backShiny == backShiny &&
        other.frontDefault == frontDefault &&
        other.frontShiny == frontShiny &&
        other.frontTransparent == frontTransparent;
  }

  @override
  int get hashCode {
    return backDefault.hashCode ^
        backShiny.hashCode ^
        frontDefault.hashCode ^
        frontShiny.hashCode ^
        frontTransparent.hashCode;
  }
}

class GenerationIii {
  OfficialArtwork emerald;
  Gold fireredLeafgreen;
  Gold rubySapphire;
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  // GenerationIii({
  //   required this.emerald,
  //   required this.fireredLeafgreen,
  //   required this.rubySapphire,
  // });

  // GenerationIii copyWith({
  //   OfficialArtwork? emerald,
  //   Gold? fireredLeafgreen,
  //   Gold? rubySapphire,
  // }) =>
  //     GenerationIii(
  //       emerald: emerald ?? this.emerald,
  //       fireredLeafgreen: fireredLeafgreen ?? this.fireredLeafgreen,
  //       rubySapphire: rubySapphire ?? this.rubySapphire,
  //     );

  GenerationIii copyWith({
    OfficialArtwork? emerald,
    Gold? fireredLeafgreen,
    Gold? rubySapphire,
  }) {
    return GenerationIii(
      emerald: emerald ?? this.emerald,
      fireredLeafgreen: fireredLeafgreen ?? this.fireredLeafgreen,
      rubySapphire: rubySapphire ?? this.rubySapphire,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emerald': emerald.toMap(),
      'fireredLeafgreen': fireredLeafgreen.toMap(),
      'rubySapphire': rubySapphire.toMap(),
    };
  }

  factory GenerationIii.fromMap(Map<String, dynamic> map) {
    return GenerationIii(
      emerald: OfficialArtwork.fromMap(map['emerald'] as Map<String, dynamic>),
      fireredLeafgreen:
          Gold.fromMap(map['firered-leafgreen'] as Map<String, dynamic>),
      rubySapphire: Gold.fromMap(map['ruby-sapphire'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationIii.fromJson(String source) =>
      GenerationIii.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'GenerationIii(emerald: $emerald, fireredLeafgreen: $fireredLeafgreen, rubySapphire: $rubySapphire)';

  @override
  bool operator ==(covariant GenerationIii other) {
    if (identical(this, other)) return true;

    return other.emerald == emerald &&
        other.fireredLeafgreen == fireredLeafgreen &&
        other.rubySapphire == rubySapphire;
  }

  @override
  int get hashCode =>
      emerald.hashCode ^ fireredLeafgreen.hashCode ^ rubySapphire.hashCode;
}

class OfficialArtwork {
  String frontDefault;
  String frontShiny;
  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  // OfficialArtwork({
  //   required this.frontDefault,
  //   required this.frontShiny,
  // });

  // OfficialArtwork copyWith({
  //   String? frontDefault,
  //   String? frontShiny,
  // }) =>
  //     OfficialArtwork(
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontShiny: frontShiny ?? this.frontShiny,
  //     );

  OfficialArtwork copyWith({
    String? frontDefault,
    String? frontShiny,
  }) {
    return OfficialArtwork(
      frontDefault: frontDefault ?? this.frontDefault,
      frontShiny: frontShiny ?? this.frontShiny,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDefault': frontDefault,
      'frontShiny': frontShiny,
    };
  }

  factory OfficialArtwork.fromMap(Map<String, dynamic> map) {
    return OfficialArtwork(
      frontDefault: map['front_default'] as String,
      frontShiny: map['front_shiny'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficialArtwork.fromJson(String source) =>
      OfficialArtwork.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'OfficialArtwork(frontDefault: $frontDefault, frontShiny: $frontShiny)';

  @override
  bool operator ==(covariant OfficialArtwork other) {
    if (identical(this, other)) return true;

    return other.frontDefault == frontDefault && other.frontShiny == frontShiny;
  }

  @override
  int get hashCode => frontDefault.hashCode ^ frontShiny.hashCode;
}

class Home {
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  // Home({
  //   required this.frontDefault,
  //   required this.frontFemale,
  //   required this.frontShiny,
  //   required this.frontShinyFemale,
  // });

  // Home copyWith({
  //   String? frontDefault,
  //   dynamic frontFemale,
  //   String? frontShiny,
  //   dynamic frontShinyFemale,
  // }) =>
  //     Home(
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontFemale: frontFemale ?? this.frontFemale,
  //       frontShiny: frontShiny ?? this.frontShiny,
  //       frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
  //     );

  Home copyWith({
    String? frontDefault,
    dynamic? frontFemale,
    String? frontShiny,
    dynamic? frontShinyFemale,
  }) {
    return Home(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
      frontShiny: frontShiny ?? this.frontShiny,
      frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
      'frontShiny': frontShiny,
      'frontShinyFemale': frontShinyFemale,
    };
  }

  factory Home.fromMap(Map<String, dynamic> map) {
    return Home(
      frontDefault: map['front_default'] as String,
      frontFemale: map['front_female'] as dynamic,
      frontShiny: map['front_shiny'] as String,
      frontShinyFemale: map['front_shiny_female'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Home.fromJson(String source) =>
      Home.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Home(frontDefault: $frontDefault, frontFemale: $frontFemale, frontShiny: $frontShiny, frontShinyFemale: $frontShinyFemale)';
  }

  @override
  bool operator ==(covariant Home other) {
    if (identical(this, other)) return true;

    return other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale &&
        other.frontShiny == frontShiny &&
        other.frontShinyFemale == frontShinyFemale;
  }

  @override
  int get hashCode {
    return frontDefault.hashCode ^
        frontFemale.hashCode ^
        frontShiny.hashCode ^
        frontShinyFemale.hashCode;
  }
}

class GenerationVii {
  DreamWorld icons;
  Home ultraSunUltraMoon;
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  // GenerationVii({
  //   required this.icons,
  //   required this.ultraSunUltraMoon,
  // });

  // GenerationVii copyWith({
  //   DreamWorld? icons,
  //   Home? ultraSunUltraMoon,
  // }) =>
  //     GenerationVii(
  //       icons: icons ?? this.icons,
  //       ultraSunUltraMoon: ultraSunUltraMoon ?? this.ultraSunUltraMoon,
  //     );

  GenerationVii copyWith({
    DreamWorld? icons,
    Home? ultraSunUltraMoon,
  }) {
    return GenerationVii(
      icons: icons ?? this.icons,
      ultraSunUltraMoon: ultraSunUltraMoon ?? this.ultraSunUltraMoon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icons': icons.toMap(),
      'ultraSunUltraMoon': ultraSunUltraMoon.toMap(),
    };
  }

  factory GenerationVii.fromMap(Map<String, dynamic> map) {
    return GenerationVii(
      icons: DreamWorld.fromMap(map['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon:
          Home.fromMap(map['ultra-sun-ultra-moon'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationVii.fromJson(String source) =>
      GenerationVii.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'GenerationVii(icons: $icons, ultraSunUltraMoon: $ultraSunUltraMoon)';

  @override
  bool operator ==(covariant GenerationVii other) {
    if (identical(this, other)) return true;

    return other.icons == icons && other.ultraSunUltraMoon == ultraSunUltraMoon;
  }

  @override
  int get hashCode => icons.hashCode ^ ultraSunUltraMoon.hashCode;
}

class DreamWorld {
  String frontDefault;
  dynamic frontFemale;
  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  // DreamWorld({
  //   required this.frontDefault,
  //   required this.frontFemale,
  // });

  // DreamWorld copyWith({
  //   String? frontDefault,
  //   dynamic frontFemale,
  // }) =>
  //     DreamWorld(
  //       frontDefault: frontDefault ?? this.frontDefault,
  //       frontFemale: frontFemale ?? this.frontFemale,
  //     );

  DreamWorld copyWith({
    String? frontDefault,
    dynamic? frontFemale,
  }) {
    return DreamWorld(
      frontDefault: frontDefault ?? this.frontDefault,
      frontFemale: frontFemale ?? this.frontFemale,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDefault': frontDefault,
      'frontFemale': frontFemale,
    };
  }

  factory DreamWorld.fromMap(Map<String, dynamic> map) {
    return DreamWorld(
      frontDefault: map['front_default'] as String,
      frontFemale: map['front_female'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory DreamWorld.fromJson(String source) =>
      DreamWorld.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DreamWorld(frontDefault: $frontDefault, frontFemale: $frontFemale)';

  @override
  bool operator ==(covariant DreamWorld other) {
    if (identical(this, other)) return true;

    return other.frontDefault == frontDefault &&
        other.frontFemale == frontFemale;
  }

  @override
  int get hashCode => frontDefault.hashCode ^ frontFemale.hashCode;
}

class GenerationViii {
  DreamWorld icons;
  GenerationViii({
    required this.icons,
  });

  // GenerationViii({
  //   required this.icons,
  // });

  // GenerationViii copyWith({
  //   DreamWorld? icons,
  // }) =>
  //     GenerationViii(
  //       icons: icons ?? this.icons,
  //     );

  GenerationViii copyWith({
    DreamWorld? icons,
  }) {
    return GenerationViii(
      icons: icons ?? this.icons,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'icons': icons.toMap(),
    };
  }

  factory GenerationViii.fromMap(Map<String, dynamic> map) {
    return GenerationViii(
      icons: DreamWorld.fromMap(map['icons'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory GenerationViii.fromJson(String source) =>
      GenerationViii.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'GenerationViii(icons: $icons)';

  @override
  bool operator ==(covariant GenerationViii other) {
    if (identical(this, other)) return true;

    return other.icons == icons;
  }

  @override
  int get hashCode => icons.hashCode;
}

class Other {
  DreamWorld dreamWorld;
  Home home;
  OfficialArtwork officialArtwork;
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  // Other({
  //   required this.dreamWorld,
  //   required this.home,
  //   required this.officialArtwork,
  // });

  // Other copyWith({
  //   DreamWorld? dreamWorld,
  //   Home? home,
  //   OfficialArtwork? officialArtwork,
  // }) =>
  //     Other(
  //       dreamWorld: dreamWorld ?? this.dreamWorld,
  //       home: home ?? this.home,
  //       officialArtwork: officialArtwork ?? this.officialArtwork,
  //     );

  Other copyWith({
    DreamWorld? dreamWorld,
    Home? home,
    OfficialArtwork? officialArtwork,
  }) {
    return Other(
      dreamWorld: dreamWorld ?? this.dreamWorld,
      home: home ?? this.home,
      officialArtwork: officialArtwork ?? this.officialArtwork,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dreamWorld': dreamWorld.toMap(),
      'home': home.toMap(),
      'officialArtwork': officialArtwork.toMap(),
    };
  }

  factory Other.fromMap(Map<String, dynamic> map) {
    return Other(
      dreamWorld:
          DreamWorld.fromMap(map['dream_world'] as Map<String, dynamic>),
      home: Home.fromMap(map['home'] as Map<String, dynamic>),
      officialArtwork: OfficialArtwork.fromMap(
          map['official-artwork'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Other.fromJson(String source) =>
      Other.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Other(dreamWorld: $dreamWorld, home: $home, officialArtwork: $officialArtwork)';

  @override
  bool operator ==(covariant Other other) {
    if (identical(this, other)) return true;

    return other.dreamWorld == dreamWorld &&
        other.home == home &&
        other.officialArtwork == officialArtwork;
  }

  @override
  int get hashCode =>
      dreamWorld.hashCode ^ home.hashCode ^ officialArtwork.hashCode;
}

class Stat {
  int baseStat;
  int effort;
  Species stat;
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  // Stat({
  //   required this.baseStat,
  //   required this.effort,
  //   required this.stat,
  // });

  // Stat copyWith({
  //   int? baseStat,
  //   int? effort,
  //   Species? stat,
  // }) =>
  //     Stat(
  //       baseStat: baseStat ?? this.baseStat,
  //       effort: effort ?? this.effort,
  //       stat: stat ?? this.stat,
  //     );

  Stat copyWith({
    int? baseStat,
    int? effort,
    Species? stat,
  }) {
    return Stat(
      baseStat: baseStat ?? this.baseStat,
      effort: effort ?? this.effort,
      stat: stat ?? this.stat,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseStat': baseStat,
      'effort': effort,
      'stat': stat.toMap(),
    };
  }

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      baseStat: map['base_stat'] as int,
      effort: map['effort'] as int,
      stat: Species.fromMap(map['stat'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Stat.fromJson(String source) =>
      Stat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Stat(baseStat: $baseStat, effort: $effort, stat: $stat)';

  @override
  bool operator ==(covariant Stat other) {
    if (identical(this, other)) return true;

    return other.baseStat == baseStat &&
        other.effort == effort &&
        other.stat == stat;
  }

  @override
  int get hashCode => baseStat.hashCode ^ effort.hashCode ^ stat.hashCode;
}

class Type {
  int slot;
  Species type;
  Type({
    required this.slot,
    required this.type,
  });

  // Type({
  //   required this.slot,
  //   required this.type,
  // });

  // Type copyWith({
  //   int? slot,
  //   Species? type,
  // }) =>
  //     Type(
  //       slot: slot ?? this.slot,
  //       type: type ?? this.type,
  //     );

  Type copyWith({
    int? slot,
    Species? type,
  }) {
    return Type(
      slot: slot ?? this.slot,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'slot': slot,
      'type': type.toMap(),
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      slot: map['slot'] as int,
      type: Species.fromMap(map['type'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Type.fromJson(String source) =>
      Type.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Type(slot: $slot, type: $type)';

  @override
  bool operator ==(covariant Type other) {
    if (identical(this, other)) return true;

    return other.slot == slot && other.type == type;
  }

  @override
  int get hashCode => slot.hashCode ^ type.hashCode;
}

// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class PokemonAPIModel {
//   List<Abilities> abilities;
//   int baseExperience;

// }

// class Abilities {
//   Ability ability;
//   bool isHidden;
//   int slot;
//   Abilities({
//     required this.ability,
//     required this.isHidden,
//     required this.slot,
//   });

//   Abilities copyWith({
//     Ability? ability,
//     bool? isHidden,
//     int? slot,
//   }) {
//     return Abilities(
//       ability: ability ?? this.ability,
//       isHidden: isHidden ?? this.isHidden,
//       slot: slot ?? this.slot,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'ability': ability.toMap(),
//       'isHidden': isHidden,
//       'slot': slot,
//     };
//   }

//   factory Abilities.fromMap(Map<String, dynamic> map) {
//     return Abilities(
//       ability: Ability.fromMap(map['ability'] as Map<String,dynamic>),
//       isHidden: map['isHidden'] as bool,
//       slot: map['slot'] as int,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Abilities.fromJson(String source) => Abilities.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Abilities(ability: $ability, isHidden: $isHidden, slot: $slot)';

//   @override
//   bool operator ==(covariant Abilities other) {
//     if (identical(this, other)) return true;

//     return
//       other.ability == ability &&
//       other.isHidden == isHidden &&
//       other.slot == slot;
//   }

//   @override
//   int get hashCode => ability.hashCode ^ isHidden.hashCode ^ slot.hashCode;
// }

// class Ability {
//   String name;
//   String url;
//   Ability({
//     required this.name,
//     required this.url,
//   });

//   Ability copyWith({
//     String? name,
//     String? url,
//   }) {
//     return Ability(
//       name: name ?? this.name,
//       url: url ?? this.url,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'url': url,
//     };
//   }

//   factory Ability.fromMap(Map<String, dynamic> map) {
//     return Ability(
//       name: map['name'] as String,
//       url: map['url'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Ability.fromJson(String source) => Ability.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'Ability(name: $name, url: $url)';

//   @override
//   bool operator ==(covariant Ability other) {
//     if (identical(this, other)) return true;

//     return
//       other.name == name &&
//       other.url == url;
//   }

//   @override
//   int get hashCode => name.hashCode ^ url.hashCode;
// }
