import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/pokemon/pokemon_entity.dart';
import '../../../domain/usecases/pokemon/search_pokemon.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchPokemon searchPokemon;

  SearchBloc(super.initialState, {required this.searchPokemon}) {
    on<SearchPokemonEvent>(_onSearchPokemonEvent);
  }

  FutureOr<void> _onSearchPokemonEvent(
    SearchPokemonEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchLoadingState());

    final failureOrPokemon =
        await searchPokemon(SearchPokemonParams(query: event.query));
    emit(
      failureOrPokemon.fold(
        (failure) => SearchErrorState(message: failure.toString()),
        (pokemon) => SearchLoadedState(pokemon: pokemon),
      ),
    );
  }
}
