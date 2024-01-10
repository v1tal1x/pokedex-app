import '../../../domain/entities/pokemon/pokemon_entity.dart';

class PokemonModel extends PokemonEntity {
  PokemonModel(
      {required super.id,
      required super.name,
      required super.types,
      required super.weight,
      required super.height,
      required super.moves,
      required super.hp,
      required super.attack,
      required super.defense,
      required super.specialAttack,
      required super.specialDefense,
      required super.speed});

  factory PokemonModel.fromJson(Map<String, dynamic> json) {
    return PokemonModel(
      id: json['id'],
      name: json['name'],
      types: (json['types'] as List<dynamic>)
          .map((type) => type['type']['name'] as String)
          .toList(),
      weight: json['weight'].toDouble(),
      height: json['height'].toDouble(),
      moves: (json['moves'] as List<dynamic>)
          .map((move) => move['move']['name'] as String)
          .toList(),
      hp: json['stats'][0]['base_stat'],
      attack: json['stats'][1]['base_stat'],
      defense: json['stats'][2]['base_stat'],
      specialAttack: json['stats'][3]['base_stat'],
      specialDefense: json['stats'][4]['base_stat'],
      speed: json['stats'][5]['base_stat'],
    );
  }
}
