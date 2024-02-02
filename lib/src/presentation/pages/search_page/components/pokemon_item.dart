part of '../search_page.dart';

class _PokemonItem extends StatelessWidget {
  final PokemonEntity pokemon;

  const _PokemonItem({required this.pokemon});

  String capitalize(String input) {
    if (input.isEmpty) {
      return input;
    }
    return input[0].toUpperCase() + input.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    final double itemWidth = 104.0.w;
    final double itemHeight = 108.0.h;
    final double itemVerticalPadding = 4.0.h;
    final double itemHorizontalPadding = 8.0.w;
    final double itemBorderRadius = 8.0.h;
    const double decorationWidth = double.infinity;
    final double decorationHeight = 44.0.h;
    final double decorationTopBorderRadius = 7.0.h;
    const String idMarker = '#';

    return Stack(
      children: <Widget>[
        Container(
          width: itemWidth,
          height: itemHeight,
          padding: EdgeInsets.symmetric(
            vertical: itemVerticalPadding,
            horizontal: itemHorizontalPadding,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(itemBorderRadius),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            width: decorationWidth,
            height: decorationHeight,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(itemBorderRadius).copyWith(
                topLeft: Radius.circular(decorationTopBorderRadius),
                topRight: Radius.circular(decorationTopBorderRadius),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  idMarker + pokemon.id.toString(),
                  style:
                      AppTextStyles.caption.copyWith(color: AppColors.medium),
                ),
              ),
              const _ItemImage(imageUrl: null),
              Text(
                capitalize(pokemon.name),
                style: AppTextStyles.body3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ItemImage extends StatelessWidget {
  final String? imageUrl;

  const _ItemImage({required this.imageUrl});

  ImageProvider _getImage() {
    if (imageUrl == null) {
      return const AssetImage(AppAssets.imgDefaultPokemon);
    }
    return NetworkImage(imageUrl!);
  }

  @override
  Widget build(BuildContext context) {
    final double imageSize = 72.0.h;

    return Image(
      image: _getImage(),
      fit: BoxFit.fitHeight,
      width: imageSize,
      height: imageSize,
    );
  }
}
