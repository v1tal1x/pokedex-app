import 'package:dartz/dartz.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/entities/pokemon/pokemon_entity.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../datasources/pokemon_remote_data_source.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PokemonEntity>> searchPokemon(String query) async {
    try {
      final PokemonEntity pokemon = await remoteDataSource.searchPokemon(query);
      return Right(pokemon);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
