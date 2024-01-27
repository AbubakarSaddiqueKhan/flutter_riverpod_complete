// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FirstApiModel {
  String ability;
  String berry;
  String berryFirmness;
  String berryFlavor;
  String characteristic;
  String contestEffect;
  String contestType;
  String eggGroup;
  String encounterCondition;
  String encounterConditionValue;
  String encounterMethod;
  String evolutionChain;
  String evolutionTrigger;
  String gender;
  String generation;
  String growthRate;
  String item;
  String itemAttribute;
  String itemCategory;
  String itemFlingEffect;
  String itemPocket;
  String language;
  String location;
  String locationArea;
  String machine;
  String move;
  String moveAilment;
  String moveBattleStyle;
  String moveCategory;
  String moveDamageClass;
  String moveLearnMethod;
  String moveTarget;
  String nature;
  String palParkArea;
  String pokeathlonStat;
  String pokedex;
  String pokemon;
  String pokemonColor;
  String pokemonForm;
  String pokemonHabitat;
  String pokemonShape;
  String pokemonSpecies;
  String region;
  String stat;
  String superContestEffect;
  String type;
  String version;
  String versionGroup;
  FirstApiModel({
    required this.ability,
    required this.berry,
    required this.berryFirmness,
    required this.berryFlavor,
    required this.characteristic,
    required this.contestEffect,
    required this.contestType,
    required this.eggGroup,
    required this.encounterCondition,
    required this.encounterConditionValue,
    required this.encounterMethod,
    required this.evolutionChain,
    required this.evolutionTrigger,
    required this.gender,
    required this.generation,
    required this.growthRate,
    required this.item,
    required this.itemAttribute,
    required this.itemCategory,
    required this.itemFlingEffect,
    required this.itemPocket,
    required this.language,
    required this.location,
    required this.locationArea,
    required this.machine,
    required this.move,
    required this.moveAilment,
    required this.moveBattleStyle,
    required this.moveCategory,
    required this.moveDamageClass,
    required this.moveLearnMethod,
    required this.moveTarget,
    required this.nature,
    required this.palParkArea,
    required this.pokeathlonStat,
    required this.pokedex,
    required this.pokemon,
    required this.pokemonColor,
    required this.pokemonForm,
    required this.pokemonHabitat,
    required this.pokemonShape,
    required this.pokemonSpecies,
    required this.region,
    required this.stat,
    required this.superContestEffect,
    required this.type,
    required this.version,
    required this.versionGroup,
  });

  FirstApiModel copyWith({
    String? ability,
    String? berry,
    String? berryFirmness,
    String? berryFlavor,
    String? characteristic,
    String? contestEffect,
    String? contestType,
    String? eggGroup,
    String? encounterCondition,
    String? encounterConditionValue,
    String? encounterMethod,
    String? evolutionChain,
    String? evolutionTrigger,
    String? gender,
    String? generation,
    String? growthRate,
    String? item,
    String? itemAttribute,
    String? itemCategory,
    String? itemFlingEffect,
    String? itemPocket,
    String? language,
    String? location,
    String? locationArea,
    String? machine,
    String? move,
    String? moveAilment,
    String? moveBattleStyle,
    String? moveCategory,
    String? moveDamageClass,
    String? moveLearnMethod,
    String? moveTarget,
    String? nature,
    String? palParkArea,
    String? pokeathlonStat,
    String? pokedex,
    String? pokemon,
    String? pokemonColor,
    String? pokemonForm,
    String? pokemonHabitat,
    String? pokemonShape,
    String? pokemonSpecies,
    String? region,
    String? stat,
    String? superContestEffect,
    String? type,
    String? version,
    String? versionGroup,
  }) {
    return FirstApiModel(
      ability: ability ?? this.ability,
      berry: berry ?? this.berry,
      berryFirmness: berryFirmness ?? this.berryFirmness,
      berryFlavor: berryFlavor ?? this.berryFlavor,
      characteristic: characteristic ?? this.characteristic,
      contestEffect: contestEffect ?? this.contestEffect,
      contestType: contestType ?? this.contestType,
      eggGroup: eggGroup ?? this.eggGroup,
      encounterCondition: encounterCondition ?? this.encounterCondition,
      encounterConditionValue:
          encounterConditionValue ?? this.encounterConditionValue,
      encounterMethod: encounterMethod ?? this.encounterMethod,
      evolutionChain: evolutionChain ?? this.evolutionChain,
      evolutionTrigger: evolutionTrigger ?? this.evolutionTrigger,
      gender: gender ?? this.gender,
      generation: generation ?? this.generation,
      growthRate: growthRate ?? this.growthRate,
      item: item ?? this.item,
      itemAttribute: itemAttribute ?? this.itemAttribute,
      itemCategory: itemCategory ?? this.itemCategory,
      itemFlingEffect: itemFlingEffect ?? this.itemFlingEffect,
      itemPocket: itemPocket ?? this.itemPocket,
      language: language ?? this.language,
      location: location ?? this.location,
      locationArea: locationArea ?? this.locationArea,
      machine: machine ?? this.machine,
      move: move ?? this.move,
      moveAilment: moveAilment ?? this.moveAilment,
      moveBattleStyle: moveBattleStyle ?? this.moveBattleStyle,
      moveCategory: moveCategory ?? this.moveCategory,
      moveDamageClass: moveDamageClass ?? this.moveDamageClass,
      moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
      moveTarget: moveTarget ?? this.moveTarget,
      nature: nature ?? this.nature,
      palParkArea: palParkArea ?? this.palParkArea,
      pokeathlonStat: pokeathlonStat ?? this.pokeathlonStat,
      pokedex: pokedex ?? this.pokedex,
      pokemon: pokemon ?? this.pokemon,
      pokemonColor: pokemonColor ?? this.pokemonColor,
      pokemonForm: pokemonForm ?? this.pokemonForm,
      pokemonHabitat: pokemonHabitat ?? this.pokemonHabitat,
      pokemonShape: pokemonShape ?? this.pokemonShape,
      pokemonSpecies: pokemonSpecies ?? this.pokemonSpecies,
      region: region ?? this.region,
      stat: stat ?? this.stat,
      superContestEffect: superContestEffect ?? this.superContestEffect,
      type: type ?? this.type,
      version: version ?? this.version,
      versionGroup: versionGroup ?? this.versionGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ability': ability,
      'berry': berry,
      'berryFirmness': berryFirmness,
      'berryFlavor': berryFlavor,
      'characteristic': characteristic,
      'contestEffect': contestEffect,
      'contestType': contestType,
      'eggGroup': eggGroup,
      'encounterCondition': encounterCondition,
      'encounterConditionValue': encounterConditionValue,
      'encounterMethod': encounterMethod,
      'evolutionChain': evolutionChain,
      'evolutionTrigger': evolutionTrigger,
      'gender': gender,
      'generation': generation,
      'growthRate': growthRate,
      'item': item,
      'itemAttribute': itemAttribute,
      'itemCategory': itemCategory,
      'itemFlingEffect': itemFlingEffect,
      'itemPocket': itemPocket,
      'language': language,
      'location': location,
      'locationArea': locationArea,
      'machine': machine,
      'move': move,
      'moveAilment': moveAilment,
      'moveBattleStyle': moveBattleStyle,
      'moveCategory': moveCategory,
      'moveDamageClass': moveDamageClass,
      'moveLearnMethod': moveLearnMethod,
      'moveTarget': moveTarget,
      'nature': nature,
      'palParkArea': palParkArea,
      'pokeathlonStat': pokeathlonStat,
      'pokedex': pokedex,
      'pokemon': pokemon,
      'pokemonColor': pokemonColor,
      'pokemonForm': pokemonForm,
      'pokemonHabitat': pokemonHabitat,
      'pokemonShape': pokemonShape,
      'pokemonSpecies': pokemonSpecies,
      'region': region,
      'stat': stat,
      'superContestEffect': superContestEffect,
      'type': type,
      'version': version,
      'versionGroup': versionGroup,
    };
  }

  factory FirstApiModel.fromMap(Map<String, dynamic> map) {
    return FirstApiModel(
      ability: map['ability'] as String,
      berry: map['berry'] as String,
      berryFirmness: map['berry-firmness'] as String,
      berryFlavor: map['berry-flavor'] as String,
      characteristic: map['characteristic'] as String,
      contestEffect: map['contest-effect'] as String,
      contestType: map['contest-type'] as String,
      eggGroup: map['egg-group'] as String,
      encounterCondition: map['encounter-condition'] as String,
      encounterConditionValue: map['encounter-condition-value'] as String,
      encounterMethod: map['encounter-method'] as String,
      evolutionChain: map['evolution-chain'] as String,
      evolutionTrigger: map['evolution-trigger'] as String,
      gender: map['gender'] as String,
      generation: map['generation'] as String,
      growthRate: map['growth-rate'] as String,
      item: map['item'] as String,
      itemAttribute: map['item-attribute'] as String,
      itemCategory: map['item-category'] as String,
      itemFlingEffect: map['item-fling-effect'] as String,
      itemPocket: map['item-pocket'] as String,
      language: map['language'] as String,
      location: map['location'] as String,
      locationArea: map['location-area'] as String,
      machine: map['machine'] as String,
      move: map['move'] as String,
      moveAilment: map['move-ailment'] as String,
      moveBattleStyle: map['move-battle-style'] as String,
      moveCategory: map['move-category'] as String,
      moveDamageClass: map['move-damage-class'] as String,
      moveLearnMethod: map['move-learn-method'] as String,
      moveTarget: map['move-target'] as String,
      nature: map['nature'] as String,
      palParkArea: map['pal-park-area'] as String,
      pokeathlonStat: map['pokeathlon-stat'] as String,
      pokedex: map['pokedex'] as String,
      pokemon: map['pokemon'] as String,
      pokemonColor: map['pokemon-color'] as String,
      pokemonForm: map['pokemon-form'] as String,
      pokemonHabitat: map['pokemon-habitat'] as String,
      pokemonShape: map['pokemon-shape'] as String,
      pokemonSpecies: map['pokemon-species'] as String,
      region: map['region'] as String,
      stat: map['stat'] as String,
      superContestEffect: map['super-contest-effect'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
      versionGroup: map['version-group'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FirstApiModel.fromJson(String source) =>
      FirstApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FirstApi(ability: $ability, berry: $berry, berryFirmness: $berryFirmness, berryFlavor: $berryFlavor, characteristic: $characteristic, contestEffect: $contestEffect, contestType: $contestType, eggGroup: $eggGroup, encounterCondition: $encounterCondition, encounterConditionValue: $encounterConditionValue, encounterMethod: $encounterMethod, evolutionChain: $evolutionChain, evolutionTrigger: $evolutionTrigger, gender: $gender, generation: $generation, growthRate: $growthRate, item: $item, itemAttribute: $itemAttribute, itemCategory: $itemCategory, itemFlingEffect: $itemFlingEffect, itemPocket: $itemPocket, language: $language, location: $location, locationArea: $locationArea, machine: $machine, move: $move, moveAilment: $moveAilment, moveBattleStyle: $moveBattleStyle, moveCategory: $moveCategory, moveDamageClass: $moveDamageClass, moveLearnMethod: $moveLearnMethod, moveTarget: $moveTarget, nature: $nature, palParkArea: $palParkArea, pokeathlonStat: $pokeathlonStat, pokedex: $pokedex, pokemon: $pokemon, pokemonColor: $pokemonColor, pokemonForm: $pokemonForm, pokemonHabitat: $pokemonHabitat, pokemonShape: $pokemonShape, pokemonSpecies: $pokemonSpecies, region: $region, stat: $stat, superContestEffect: $superContestEffect, type: $type, version: $version, versionGroup: $versionGroup)';
  }

  @override
  bool operator ==(covariant FirstApiModel other) {
    if (identical(this, other)) return true;

    return other.ability == ability &&
        other.berry == berry &&
        other.berryFirmness == berryFirmness &&
        other.berryFlavor == berryFlavor &&
        other.characteristic == characteristic &&
        other.contestEffect == contestEffect &&
        other.contestType == contestType &&
        other.eggGroup == eggGroup &&
        other.encounterCondition == encounterCondition &&
        other.encounterConditionValue == encounterConditionValue &&
        other.encounterMethod == encounterMethod &&
        other.evolutionChain == evolutionChain &&
        other.evolutionTrigger == evolutionTrigger &&
        other.gender == gender &&
        other.generation == generation &&
        other.growthRate == growthRate &&
        other.item == item &&
        other.itemAttribute == itemAttribute &&
        other.itemCategory == itemCategory &&
        other.itemFlingEffect == itemFlingEffect &&
        other.itemPocket == itemPocket &&
        other.language == language &&
        other.location == location &&
        other.locationArea == locationArea &&
        other.machine == machine &&
        other.move == move &&
        other.moveAilment == moveAilment &&
        other.moveBattleStyle == moveBattleStyle &&
        other.moveCategory == moveCategory &&
        other.moveDamageClass == moveDamageClass &&
        other.moveLearnMethod == moveLearnMethod &&
        other.moveTarget == moveTarget &&
        other.nature == nature &&
        other.palParkArea == palParkArea &&
        other.pokeathlonStat == pokeathlonStat &&
        other.pokedex == pokedex &&
        other.pokemon == pokemon &&
        other.pokemonColor == pokemonColor &&
        other.pokemonForm == pokemonForm &&
        other.pokemonHabitat == pokemonHabitat &&
        other.pokemonShape == pokemonShape &&
        other.pokemonSpecies == pokemonSpecies &&
        other.region == region &&
        other.stat == stat &&
        other.superContestEffect == superContestEffect &&
        other.type == type &&
        other.version == version &&
        other.versionGroup == versionGroup;
  }

  @override
  int get hashCode {
    return ability.hashCode ^
        berry.hashCode ^
        berryFirmness.hashCode ^
        berryFlavor.hashCode ^
        characteristic.hashCode ^
        contestEffect.hashCode ^
        contestType.hashCode ^
        eggGroup.hashCode ^
        encounterCondition.hashCode ^
        encounterConditionValue.hashCode ^
        encounterMethod.hashCode ^
        evolutionChain.hashCode ^
        evolutionTrigger.hashCode ^
        gender.hashCode ^
        generation.hashCode ^
        growthRate.hashCode ^
        item.hashCode ^
        itemAttribute.hashCode ^
        itemCategory.hashCode ^
        itemFlingEffect.hashCode ^
        itemPocket.hashCode ^
        language.hashCode ^
        location.hashCode ^
        locationArea.hashCode ^
        machine.hashCode ^
        move.hashCode ^
        moveAilment.hashCode ^
        moveBattleStyle.hashCode ^
        moveCategory.hashCode ^
        moveDamageClass.hashCode ^
        moveLearnMethod.hashCode ^
        moveTarget.hashCode ^
        nature.hashCode ^
        palParkArea.hashCode ^
        pokeathlonStat.hashCode ^
        pokedex.hashCode ^
        pokemon.hashCode ^
        pokemonColor.hashCode ^
        pokemonForm.hashCode ^
        pokemonHabitat.hashCode ^
        pokemonShape.hashCode ^
        pokemonSpecies.hashCode ^
        region.hashCode ^
        stat.hashCode ^
        superContestEffect.hashCode ^
        type.hashCode ^
        version.hashCode ^
        versionGroup.hashCode;
  }
}
