part of 'search_bloc.dart';

abstract class SearchState {}

class SearchLoadingState extends SearchState {}

class SearchLoadedState extends SearchState {
  final PokemonEntity pokemon;

  SearchLoadedState({required this.pokemon});
}

class SearchErrorState extends SearchState {
  final String message;

  SearchErrorState({required this.message});
}
