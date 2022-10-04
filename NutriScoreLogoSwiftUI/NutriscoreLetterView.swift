//
//  NutriscoreLetterView.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import SwiftUI

/**
 A SwiftUI view that paints a  Nutriscore letter with the correct dimension and color for a specific letter.
*/
struct NutriscoreLetterView: View {
    
    /// The ViewModel of type NutriscoreLetterViewModel to be used for this view.
    public var model = NutriscoreLetterViewModel(nutriscore: .a, letterPresentation: .color)

    // A letter rectangle has an height/width ratio of 1.6.
    // A system font **title** with weight **heavy** ressembles the logo best
    var body: some View {
        Text(model.letter)
            .font(.title)
            .fontWeight(.bold)
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
 A SwiftUI view that paints a selected Nutriscore letter with the correct size and the correct color and background color.
 
- Important: You need to set the model variable of type NutriscoreLetterViewModel to setup.
 */
struct NutriscoreSelectedLetterView: View {
    
/// The NutriscoreLetterViewModel that sets up a NutriscoreSelectedLetterView. This model sets the letter and colour that needs to be painted.
    public var model = NutriscoreLetterViewModel(nutriscore: .a, letterPresentation: .color)

    // The size difference ratio between the selected and unselected letter is 1.35. This determines ths scaleEffect used.
    // The height width ratio of the background is slightly larger than the standard letter background: 1.7. This determines the padding used
    var body: some View {
        Text(model.letter)
            .font(.title)
            .fontWeight(.bold)
            .padding(EdgeInsets(
                top:13,
                leading:8,
                bottom:13,
                trailing:8))
            .foregroundColor(.white)
            .background(model.background)
            .scaleEffect(1.35)
            .clipShape(RoundedRectangle(cornerRadius: 17))
            .overlay(RoundedRectangle(cornerRadius: 17).stroke(.white, lineWidth:3 ))
    }
}

/// The way the logo should be represented, in color, or gray
public enum LetterPresentation {
    case color
    case blackwhite
}

struct NutriscoreLetterViewModel {
    
    /// The foregroundcolor that must be used (i.e. the color of the letter)
    public var foregroundcolor: Color {
        self.letterPresentation == .color ? nutriscore.foreground : nutriscore.foregroundGray
    }
    /// The background color that must be used behind the letter
    public var background : Color {
        self.letterPresentation == .color ? nutriscore.background : nutriscore.backgroundGray
    }
    /// The letter that must be shown (A,B,C,D or E)
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
    
/// The Nutri-Score background color to be used
    public var validBackground: Color {
        return letterPresentation == .color ? nutriscore.background : nutriscore.backgroundGray
    }
/// The Nutri-Score letter to be painted
    private var nutriscore: Nutriscore
    
/// The Nutri-Score letter color that must be used
    private var letterPresentation: LetterPresentation


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
