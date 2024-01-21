part of '../search_page.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar();

  @override
  Size get preferredSize => Size.fromHeight(112.0.h);

  @override
  Widget build(BuildContext context) {
    final double titlePadding = 16.0.h;
    const double titleSpacing = 0.0;

    return AppBar(
      backgroundColor: AppColors.primary,
      title: Padding(
        padding:
            EdgeInsets.all(titlePadding).copyWith(bottom: titlePadding / 2),
        child: const _AppBarTitle(),
      ),
      titleSpacing: titleSpacing,
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    const String titleText = 'Pokédex';
    final double iconSize = 24.0.sp;
    final double titleTextLeftPadding = 8.0.h;

    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.icPokeball,
          colorFilter: const ColorFilter.mode(
            AppColors.white,
            BlendMode.srcIn,
          ),
          width: iconSize,
          height: iconSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: titleTextLeftPadding),
          child: Text(
            titleText,
            style: AppTextStyles.headline.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class _SortButton extends StatelessWidget {
  const _SortButton();

  @override
  Widget build(BuildContext context) {
    final double borderRadius = 16.0.h;
    final double padding = 8.0.h;
    final double iconSize = 16.0.h;

    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(padding),
        child: SvgPicture.asset(
          AppAssets.icTextFormat,
          colorFilter: const ColorFilter.mode(
            AppColors.primary,
            BlendMode.srcIn,
          ),
          width: iconSize,
          height: iconSize,
        ),
      ),
    );
  }
}
