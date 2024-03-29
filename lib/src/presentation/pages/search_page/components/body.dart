part of '../search_page.dart';

class _Body extends StatelessWidget {
  final List<PokemonEntity>? pokemons;

  const _Body({this.pokemons});

  @override
  Widget build(BuildContext context) {
    const double bodyTopPadding = 0.0;
    final double bodyPadding = 4.0.h;
    final double containerBorderRadius = 8.0.h;

    return Padding(
      padding: EdgeInsets.all(bodyPadding).copyWith(top: bodyTopPadding),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(containerBorderRadius),
        ),
        child: DisableScrollGlowWidget(
          child: SingleChildScrollView(
            controller: ScrollController(),
            physics: const AlwaysScrollableScrollPhysics(),
            child: pokemons != null && pokemons!.isNotEmpty
                ? _PokemonList(pokemons: pokemons!)
                : Container(),
          ),
        ),
      ),
    );
  }
}
