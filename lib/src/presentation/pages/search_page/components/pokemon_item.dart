part of '../search_page.dart';

class _PokemonItem extends StatelessWidget {
  const _PokemonItem();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _ItemImage extends StatelessWidget {
  final String? imageUrl;

  const _ItemImage({this.imageUrl});

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
