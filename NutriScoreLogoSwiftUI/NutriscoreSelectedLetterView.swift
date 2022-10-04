//
//  NutriscoreSelectedLetterView.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import SwiftUI

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

struct NutriscoreSelectedLetterView_Previews: PreviewProvider {
    static var previews: some View {
        NutriscoreSelectedLetterView()
    }
}
