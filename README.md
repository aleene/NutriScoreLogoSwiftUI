# NutriScoreLogo2

This repository defines a SwiftUI view, which shows the NutriScore logo. It is possible to set the various variants of the logo and special cases for unknown scores and exempt products.

The view supports dark mode, where the the colors are dimmd by 20%

## Example


## Demo

The repository contains a demo app, which shows the logo in varius formats and scaled

## Usage

Just copy the files to your project. You can inititialise the view with

NutriscoreView(model: NutriscoreViewModel(nutriscore: nutriscore_values))

The supported nutriscore values are:
* .a
* .b
* .c
* .d
* .e
* .exempt
* .unknown

## To Be Done
* Check colour against standard
* Check the sizes against the standard


## Ideas
* Add a vertical presentation option
* Add black-white versions
