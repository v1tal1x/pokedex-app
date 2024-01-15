import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';
import '../../entities/pokemon/pokemon_entity.dart';
import '../../repositories/pokemon_repository.dart';

class SearchPokemon extends UseCase<PokemonEntity, SearchPokemonParams> {
  final PokemonRepository pokemonRepository;

  SearchPokemon({required this.pokemonRepository});

  @override
  Future<Either<Failure, PokemonEntity>> call(SearchPokemonParams params) {
    return pokemonRepository.searchPokemon(params.query);
  }
}

class SearchPokemonParams {
  final String query;

  SearchPokemonParams({required this.query});
}
