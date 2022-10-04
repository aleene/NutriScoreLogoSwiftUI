//
//  AppView.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 25/09/2022.
//

import SwiftUI

/// The application shows the varoius variants of the nutriscore logo and scaling examples
struct AppView: View {
    var body: some View {
        VStack {
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .a))
                .padding(.bottom)
                .scaleEffect(2.0)
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .b))
                .scaleEffect(0.5)

            NutriscoreView(model: NutriscoreViewModel(nutriscore: .c))
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .d))
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .e))
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .neutral))
            NutriscoreView(model: NutriscoreViewModel(nutriscore: .unknown))
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
