class PokemonEntity {
  final int id;
  final String name;
  final List<String> types;
  final double weight;
  final double height;
  final List<String> moves;
  final int hp;
  final int attack;
  final int defense;
  final int specialAttack;
  final int specialDefense;
  final int speed;

  PokemonEntity({
    required this.id,
    required this.name,
    required this.types,
    required this.weight,
    required this.height,
    required this.moves,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });
}
