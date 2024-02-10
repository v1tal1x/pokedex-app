abstract class SearchEvent {}

class SearchPokemonEvent extends SearchEvent {
  final String query;

  SearchPokemonEvent({required this.query});
}
