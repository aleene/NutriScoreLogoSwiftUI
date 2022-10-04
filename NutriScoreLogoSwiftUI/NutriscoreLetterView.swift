//
//  NutriscoreLetterView.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import SwiftUI

/**
 A SwiftUI view that paints a highlighted Nutriscore letter.
 
- Important: You need to set the model variable of the view to setup.
 */
struct NutriscoreLetterView: View {
    
    public var model = NutriscoreLetterViewModel(nutriscore: .a, letterPresentation: .color)

    var body: some View {
        Text(model.letter)
            .font(.title)
            .fontWeight(.heavy)
            .padding(EdgeInsets(
                top:6,
                leading:4,
                bottom:6,
                trailing:4))
            .background(model.background)
            .foregroundColor(model.foregroundcolor)
    }
}


/**
 A SwiftUI view that paints a highlighted Nutriscore letter.
 
- Important: You need to set the model variable of the view to setup.
 */
struct NutriscoreSelectedLetterView: View {
    
/**
 The NutriscoreLetterViewModel that sets up a NutriscoreSelectedLetterView. This model sets the letter and colour that needs to be painted.
*/
    public var model = NutriscoreLetterViewModel(nutriscore: .a, letterPresentation: .color)

    var body: some View {
        Text(model.letter)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(EdgeInsets(
                top:6,
                leading:4,
                bottom:6,
                trailing:4))
            .foregroundColor(.white)
            .background(model.background)
            .scaleEffect(1.1)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(.white, lineWidth:3 ))
    }
}

public enum LetterPresentation {
    case color
    case blackwhite
}

struct NutriscoreLetterViewModel {
    
    public var foregroundcolor: Color {
        self.letterPresentation == .color ? nutriscore.foreground : nutriscore.foregroundGray
    }
    public var background : Color {
        self.letterPresentation == .color ? nutriscore.background : nutriscore.backgroundGray
    }
    public var letter : String {
        nutriscore.letter
    }
    
/**
 Initialiser for the NutriscoreLetterViewModel
 - Parameters:
    - nutriscore: the letter to be painted
    - letterPresentation: the letter color to be used
 */
    init(nutriscore: Nutriscore, letterPresentation: LetterPresentation) {
        self.nutriscore = nutriscore
        self.letterPresentation = letterPresentation
    }
    
/// The Nutri-Score letter to be painted
    private var nutriscore: Nutriscore
    
/// The Nutri-Score letter color that must be used
    private var letterPresentation: LetterPresentation

/// The Nutri-Score background color to be used
    private var validBackground: Color {
        return letterPresentation == .color ? nutriscore.background : nutriscore.backgroundGray
    }

}


/// Link Nutriscore with display colours as defined in the Assets
extension Nutriscore {
    var background: Color {
        return Color("Nutriscore" + self.letter)
    }
    var foreground: Color {
        return Color("Nutriscore" + self.letter + "letter")
    }
    var backgroundGray: Color {
        return Color("Nutriscore" + self.letter + "Gray")
    }
    var foregroundGray: Color {
        return Color("NutriscoreLetterGray")
    }

}
