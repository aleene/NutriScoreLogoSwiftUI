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

struct NutriscoreLetterView_Previews: PreviewProvider {
    static var previews: some View {
        NutriscoreLetterView()
    }
}
