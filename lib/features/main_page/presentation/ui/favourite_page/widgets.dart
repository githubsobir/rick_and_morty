// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:rick_and_morty/core/theme/colors_app.dart';
// import 'package:rick_and_morty/features/main_page/domain/entites/character_entities.dart';
// import 'package:rick_and_morty/features/main_page/presentation/state/favourite_state/favourite_cubit.dart';
//
// void showFavouriteSnackBar(BuildContext context,
//     bool isAdded,
//     CharacterEntities character,) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text('Removed from favorites'),
//       duration: const Duration(seconds: 2),
//       behavior: SnackBarBehavior.floating,
//       backgroundColor: AppColors.primaryButtonColor(context),
//       action: SnackBarAction(
//         label: 'Cancel',
//         backgroundColor: AppColors.borderColor(context),
//         textColor: AppColors.textAppBarColor(context),
//         onPressed: () {
//           context.read<FavouriteCubit>().toggleFavourite(character);
//         },
//       ),
//     ),
//   );
// }