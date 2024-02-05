part of '../search_page.dart';

class _PokemonList extends StatelessWidget {
  final List<PokemonEntity> pokemons;

  const _PokemonList({required this.pokemons});

  @override
  Widget build(BuildContext context) {
    const int horizontalItemCount = 3;
    final double spacer = 8.0.h;

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: horizontalItemCount,
        crossAxisSpacing: spacer,
        mainAxisSpacing: spacer,
      ),
      itemCount: pokemons.length,
      itemBuilder: (BuildContext context, int index) =>
          _PokemonItem(pokemon: pokemons[index]),
    );
  }
}
