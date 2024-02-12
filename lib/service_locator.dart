import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'src/data/datasources/pokemon_remote_data_source.dart';
import 'src/data/repositories/pokemon_repository_impl.dart';
import 'src/domain/repositories/pokemon_repository.dart';
import 'src/domain/usecases/pokemon/search_pokemon.dart';
import 'src/presentation/blocs/search_bloc/search_bloc.dart';

GetIt sl = GetIt.instance;

void setup() async {
  //blocs
  sl.registerLazySingleton<SearchBloc>(
      () => SearchBloc(sl(), searchPokemon: sl()));

  //usecases
  sl.registerLazySingleton<SearchPokemon>(
      () => SearchPokemon(pokemonRepository: sl()));

  //repositories
  sl.registerLazySingleton<PokemonRepository>(
      () => PokemonRepositoryImpl(remoteDataSource: sl()));

  //datasources
  sl.registerLazySingleton<PokemonRemoteDataSource>(
      () => PokemonRemoteDataSourceImpl(client: sl()));

  //external
  sl.registerLazySingleton<Dio>(() => Dio());
}
