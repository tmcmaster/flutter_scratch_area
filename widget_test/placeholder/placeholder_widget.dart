import 'package:flutter/material.dart';
import 'package:flutter_workbench/flutter_workbench.dart';

import '../shared/shared_style.dart';

/// The following is a list of required widgets:
///
/// HomeScreenBanner
/// HomeScreenRated
/// HomeScreenTrending
/// HomeScreenIngredients
/// HomeScreenFavourites
/// HomeScreenNavigationBar -> SharedNavigationBar
///
/// SharedIngredientsIcon
/// SharedRecipeIcon
/// SharedNavigationBar
///
/// RecipeScreenBanner
/// RecipeScreenServings
/// RecipeScreenDetails
/// RecipeScreenNavigationBar -> SharedNavigationBar
///
/// FavouriteScreenBanner
/// FavouriteScreenList
/// FavouriteScreenNavigationBar -> SharedNavigationBar
///
/// IngredientScreenBanner
/// IngredientScreenList
/// IngredientScreenNavigationBar -> SharedNavigationBar
///
/// TrendingScreenBanner
/// TrendingScreenList
/// TrendingScreenNavigationBar -> SharedNavigationBar
///
/// RatedScreenBanner
/// RatedScreenList
/// RatedScreenNavigationBar -> SharedNavigationBar
///

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 300,
        height: 200,
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/images/home.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  FlutterWorkbench.runAppContainer(
    title: 'Carousel Complicated',
    styles: SharedStyle.themes,
    child: PlaceholderWidget(),
  );
}
