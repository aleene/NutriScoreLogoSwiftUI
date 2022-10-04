//
//  NutriscoreViewModel.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import Foundation
import SwiftUI

class NutriscoreViewModel {
    
    public var nutriscore = Nutriscore.a
    public var name = Nutriscore.name
    public var submodels: [NutriscoreLetterViewModel] = []

    init(nutriscore: Nutriscore) {
        self.nutriscore = nutriscore
        submodels.append(NutriscoreLetterViewModel(nutriscore: .a, letterPresentation: letterPresentation))
        submodels.append(NutriscoreLetterViewModel(nutriscore: .b, letterPresentation: letterPresentation))
        submodels.append(NutriscoreLetterViewModel(nutriscore: .c, letterPresentation: letterPresentation))
        submodels.append(NutriscoreLetterViewModel(nutriscore: .d, letterPresentation: letterPresentation))
        submodels.append(NutriscoreLetterViewModel(nutriscore: .e, letterPresentation: letterPresentation))
    }
    
    var letterPresentation: LetterPresentation {
        switch nutriscore {
        case .a, .b, .c, .d, .e:
            return .color
        case .exempt, .unknown:
            return .blackwhite
        }
    }
    
}
