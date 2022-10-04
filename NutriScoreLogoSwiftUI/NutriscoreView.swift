//
//  ContentView.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import SwiftUI

struct NutriscoreView: View {
    
    public var model = NutriscoreViewModel(nutriscore: .a)
    
    var body: some View {
        VStack(alignment: .leading, spacing: -2.0) {
            Text(model.name)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.leading)
            if model.submodels.count == 5 {
                ZStack {
                    HStack(spacing: 0.0) {
                        ZStack {
                            Rectangle()
                                .padding(.leading, 15.0)
                                .frame(width: 29.0, height: 49)
                                .zIndex(0.0)
                                .foregroundColor(model.submodels.first!.validBackground)
                            NutriscoreLetterView(model: model.submodels.first!)
                                .zIndex(1.0)
                                .cornerRadius(12)
                        }
                        NutriscoreLetterView(model: model.submodels[1])
                        NutriscoreLetterView(model: model.submodels[2])
                        NutriscoreLetterView(model: model.submodels[3])
                        ZStack {
                            NutriscoreLetterView(model: model.submodels.last!)
                                .zIndex(1.0)
                                .cornerRadius(12)
                            Rectangle()
                                .padding(.trailing, 15.0)
                                .frame(width: 29.0, height: 49)
                                .zIndex(0.0)
                                .foregroundColor(model.submodels.last!.validBackground)
                        }
                    }
                    .overlay(
                        CrossShape()
                            .stroke(model.nutriscore == .unknown ? .black : .clear, lineWidth: 2.0)
                    )
                    
                    // only draw the selected nutriscore if there is a valid nutriscore
                    if model.nutriscore.validScore {
                        HStack(spacing: -4.0) {
                            if model.nutriscore == .a {
                                NutriscoreSelectedLetterView(model: model.submodels.first!)
                                    .padding(.trailing, 2 * 56.0)
                            } else if model.nutriscore == .b {
                                NutriscoreSelectedLetterView(model: model.submodels[1])
                                    .padding(.trailing, 56.0)
                            } else if model.nutriscore == .c {
                                NutriscoreSelectedLetterView(model: model.submodels[2])
                                
                            } else if model.nutriscore == .d {
                                NutriscoreSelectedLetterView(model: model.submodels[3])
                                    .padding(.leading, 56.0)
                            } else if model.nutriscore == .e {
                                NutriscoreSelectedLetterView(model: model.submodels.last!)
                                    .padding(.leading, 2 * 56.0)
                            }
                        }
                    }
                } // ZStack
            } // if submodels
        } // VStack
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NutriscoreView()
    }
}
