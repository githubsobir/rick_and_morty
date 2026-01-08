import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/core/theme/colors_app.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
import 'package:rick_and_morty/features/main_page/presentation/state/navigation_state/navigation_cubit.dart';

Widget sortAppBar(BuildContext context) {
  return Visibility(
    visible: context.watch<NavigationCubit>().state.currentIndex == 1,
    child: Padding(
      padding: const EdgeInsets.only(right: 20),
      child: PopupMenuButton(
        child: const Icon(Icons.sort),
        onSelected: (val) {
          context.read<FavouriteCubit>().sortedFavourites(val);
        },
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              value: 0,
              child: ListTile(
                title: text('По имени', context),
                leading: Icon(
                  Icons.sort_by_alpha,
                  color: AppColors.primaryButtonColor(context),
                ),
              ),
            ),
            PopupMenuItem(
              value: 1,
              child: ListTile(
                title: text('По статусу', context),
                leading: Icon(
                  Icons.star_border_purple500_outlined,
                  color: AppColors.primaryButtonColor(context),
                ),
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: ListTile(
                title: text('По локатсия', context),
                leading: Icon(
                  Icons.star_border_purple500_outlined,
                  color: AppColors.primaryButtonColor(context),
                ),
              ),
            ),
          ];
        },
      ),
    ),
  );
}

Widget text(String text, BuildContext context) {
  return Text(
    text,
    style: TextStyle(color: AppColors.primaryButtonColor(context)),
  );
}
