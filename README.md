# NutriScoreLogoSwiftUI

This repository defines a SwiftUI view, which shows the Nutri-Score logo [ref 1](https://www.santepubliquefrance.fr/en/nutri-score). It is possible to set the various variants of the logo and special cases for unknown scores and exempt products.

The view supports dark mode, where the the colors are dimmd by 20%

## Example


## Demo

The repository contains a demo app, which shows the logo in various formats and scalings.

## Usage

Just copy the files to your project. 

You can add the view to your SwiftUI file through:

            `NutriscoreView(model: NutriscoreViewModel(nutriscore: value))`

Initialise your view with a value through its corresonding model NutriscoreViewModel. The supported values are:
* .a
* .b
* .c
* .d
* .e
* .neutral for products that do not have a Nutri-score
* .unknown if you need to shows something when you do not know the value. You might also choose to leave the logo out.

## Implementation
In implementing this View, several principles has been followed:
* Maximum separation of interest, which implies that there are separate constructs for the View and the ViewModel.
* View and corresponding ViewModel are saved in a single file.
* The colours used come from the [design guidelines](https://www.santepubliquefrance.fr/media/files/02-determinants-de-sante/nutrition-et-activite-physique/nutri-score/annexe2-charte-graphique-en). As no RGB-values are published, they have been picked from the guidelines with the Mac Colour Picker. For the dark mode, these colours have been toned down by 10% in the HSB slideer panel.
* The guidelines do not mention a font, so the standard IOS-font has been used.
* The word Nutri-Score is officially written as two words capitalised and separated by a dash (so Nutri-Score). For convenience in the code this has been lowercaed and the dash has been removed (so nutriscore).

## To Be Done
* Check the sizes against the standard
* What to do 

## Ideas
* Add a vertical presentation option
* Add black-white versions
* Add Multi Nutri-score support

## References
1. The official site for Nutri-score https://www.santepubliquefrance.fr/en/nutri-score
2. The design guidelines for Nutri-score (download) https://www.santepubliquefrance.fr/media/files/02-determinants-de-sante/nutrition-et-activite-physique/nutri-score/annexe2-charte-graphique-en
