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
      bottom: const _AppBarBottom(),
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

class _AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarBottom();

  @override
  Size get preferredSize => Size.fromHeight(64.0.h);

  @override
  Widget build(BuildContext context) {
    final double horizontalPadding = 16.0.w;
    final double topPadding = 8.0.h;
    final double bottomPadding = 24.0.h;

    return Padding(
      padding: EdgeInsets.only(
        left: horizontalPadding,
        top: topPadding,
        right: horizontalPadding,
        bottom: bottomPadding,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _SearchWidget(),
          _SortButton(),
        ],
      ),
    );
  }
}

class _SearchWidget extends StatefulWidget {
  const _SearchWidget();

  @override
  State<_SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<_SearchWidget> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(
      () => setState(() {}),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = 280.0.w;
    final double height = 32.0.h;
    final double verticalPadding = 8.0.h;
    final double horizontalPadding = 12.0.w;
    final double borderRadius = 16.0.h;

    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: <BoxShadow>[AppShadows.innerShadow2dp],
      ),
      child: Row(
        children: <Widget>[
          const _SearchWidgetIcon(assetName: AppAssets.icSearch),
          _SearchTextFormField(searchController: searchController),
          Visibility(
            visible: searchController.text.isNotEmpty,
            child: Padding(
              padding: EdgeInsets.only(left: verticalPadding),
              child: InkWell(
                child: const _SearchWidgetIcon(assetName: AppAssets.icClose),
                onTap: () => searchController.clear(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchWidgetIcon extends StatelessWidget {
  final String assetName;

  const _SearchWidgetIcon({
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    final double iconSize = 12.0.h;

    return SvgPicture.asset(
      assetName,
      colorFilter: const ColorFilter.mode(
        AppColors.primary,
        BlendMode.srcIn,
      ),
      width: iconSize,
      height: iconSize,
    );
  }
}

class _SearchTextFormField extends StatelessWidget {
  final TextEditingController searchController;

  const _SearchTextFormField({required this.searchController});

  @override
  Widget build(BuildContext context) {
    const String hintText = 'Search';
    final double contentHorizontalPadding = 8.0.h;

    return Expanded(
      child: TextFormField(
        controller: searchController,
        cursorColor: AppColors.primary,
        style: AppTextStyles.body3.copyWith(color: AppColors.dark),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyles.body3.copyWith(color: AppColors.medium),
          isDense: true,
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: contentHorizontalPadding),
        ),
      ),
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

class SortCard extends StatelessWidget {
  const SortCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String cardTitle = 'Sort by:';
    final double cardPadding = 4.0.h;
    const double cardTopPadding = 0.0;
    final double verticalPadding = 16.0.h;
    final double horizontalPadding = 20.0.w;
    final double cardBorderRadius = 12.0.h;
    final double typeContainerBorderRadius = 8.0.h;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(cardBorderRadius),
      ),
      padding: EdgeInsets.all(cardPadding).copyWith(top: cardTopPadding),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: horizontalPadding,
            ),
            child: Text(
              cardTitle,
              style: AppTextStyles.subtitle2.copyWith(color: AppColors.white),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(typeContainerBorderRadius),
            ),
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding,
              horizontal: horizontalPadding,
            ),
            child: const _SortRadioListTile(),
          ),
        ],
      ),
    );
  }
}

enum SortType { number, name }

class _SortRadioListTile extends StatefulWidget {
  const _SortRadioListTile();

  @override
  State<_SortRadioListTile> createState() => __SortRadioListTileState();
}

class __SortRadioListTileState extends State<_SortRadioListTile> {
  SortType? _selectedType = SortType.number;

  @override
  Widget build(BuildContext context) {
    final double spacer = 16.0.h;
    final double contentLeftPadding = 8.0.w;

    return Column(
      children: <Widget>[
        RadioListTile<SortType>(
          fillColor: const MaterialStatePropertyAll(AppColors.primary),
          contentPadding: EdgeInsets.only(left: contentLeftPadding),
          value: SortType.number,
          groupValue: _selectedType,
          onChanged: (SortType? value) => setState(() => _selectedType = value),
        ),
        SizedBox(height: spacer),
        RadioListTile<SortType>(
          fillColor: const MaterialStatePropertyAll(AppColors.primary),
          contentPadding: EdgeInsets.only(left: contentLeftPadding),
          value: SortType.name,
          groupValue: _selectedType,
          onChanged: (SortType? value) => setState(() => _selectedType = value),
        ),
      ],
    );
  }
}
