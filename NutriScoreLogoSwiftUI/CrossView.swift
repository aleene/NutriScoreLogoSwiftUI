//
//  CrossShape.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 25/09/2022.
//

import SwiftUI

/// Required for the preview
struct CrossView: View {
    
    var body: some View {
        CrossShape()
            .stroke(.green, lineWidth: 2.0)
    }
}

/// A Shape that paints a cross consisting of two lines: one from topleft to bottomright and one from bottomleft to topright.
struct CrossShape: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.move(to: CGPoint(x: 0, y: rect.height))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.closeSubpath()
        return path
    }
}


struct CrossView_Previews: PreviewProvider {
    static var previews: some View {
        CrossView()
    }
}
