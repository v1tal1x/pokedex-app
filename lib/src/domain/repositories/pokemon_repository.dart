import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/pokemon/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, PokemonEntity>> searchPokemon(String query);
}
