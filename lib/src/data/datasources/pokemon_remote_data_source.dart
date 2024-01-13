import 'package:dio/dio.dart';

import '../../config/api_constants.dart';
import '../../core/error/exception.dart';
import '../models/pokemon/pokemon_model.dart';

abstract class PokemonRemoteDataSource {
  Future<PokemonModel> searchPokemon(String query);
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final Dio client;

  PokemonRemoteDataSourceImpl({required this.client});

  @override
  Future<PokemonModel> searchPokemon(String query) async {
    try {
      final Response response =
          await client.get('${ApiConstants.searchUrl}/$query');
      return PokemonModel.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw ServerException();
    }
  }
}
