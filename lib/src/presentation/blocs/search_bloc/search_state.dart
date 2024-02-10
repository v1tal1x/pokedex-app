abstract class SearchState {}

class SearchLoadingState extends SearchState {}

class SearchLoadedState extends SearchState {}

class SearchErrorState extends SearchState {
  final String message;

  SearchErrorState({required this.message});
}
