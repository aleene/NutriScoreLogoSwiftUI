//
//  NutriscoreLetterViewModel.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import Foundation
import SwiftUI

class NutriscoreLetterViewModel {
    
    private var nutriscore: Nutriscore
    private var letterPresentation: LetterPresentation
    public var foregroundcolor: Color {
        self.letterPresentation == .color ? nutriscore.foreground : nutriscore.foregroundUnknown
    }
    public var background : Color {
        self.letterPresentation == .color ? nutriscore.background : nutriscore.backgroundUnknown
    }
    public var letter : String {
        nutriscore.letter
    }
    
    init(nutriscore: Nutriscore, letterPresentation: LetterPresentation) {
        self.nutriscore = nutriscore
        self.letterPresentation = letterPresentation
    }
    
    var validBackground: Color {
        return letterPresentation == .color ? nutriscore.background : nutriscore.backgroundUnknown
    }

}

public enum LetterPresentation {
    case color
    case blackwhite
}

// Link Nutriscore with display colors
extension Nutriscore {
    var background: Color {
        return Color("Nutriscore" + self.letter)
    }
    var foreground: Color {
        return Color("Nutriscore" + self.letter + "letter")
    }
    var backgroundUnknown: Color {
        return Color("Nutriscore" + self.letter + "Unknown")
    }
    var foregroundUnknown: Color {
        return Color("NutriscoreLetterUnknown")
    }

}
