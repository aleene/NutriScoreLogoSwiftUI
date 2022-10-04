//
//  Nutriscore.swift
//  NutriScoreLogo2
//
//  Created by Arnaud Leene on 24/09/2022.
//

import Foundation

/**
 Enumerator, which describes all possible Nutriscore values.
 
 * Values:
    * .a: shows the Nutri-score logo with the A highlighted
    - .b: shows the Nutri-score logo with the B highlighted
    - .c: shows the Nutri-score logo with the C highlighted
    - .d: shows the Nutri-score logo with the D highlighted
    - .e: shows the Nutri-score logo with the E highlighted
    - .neutral: shows a gray Nutriscore logo with no letters highlighted and a black cross through the logo. To be used for products where the Nutri-score is not applicable;
    - .unknown: shows a gray Nutriscore logo with no letters highlighted
 */
enum Nutriscore {
    case a
    case b
    case c
    case d
    case e
    case neutral
    case unknown
    
/**
Computed variable that returns a letter in latin script corresponding to the Nutriscore. For .exempt and .unknown an empty string is returned.
*/
    var letter: String {
        switch self {
        case .a: return "A"
        case .b: return "B"
        case .c: return "C"
        case .d: return "D"
        case .e: return "E"
        default: return ""
        }
    }
    
/**
Computed variable that returns a boolean whether a valid Nutri-Score exist (A,B,C,D,E).
 
 - Values:
    - true: for Nutri-Score values a, b, c, d and e
    - false: for Nutri-Score values exempt and unknown
*/
    public var validScore: Bool {
        switch self {
        case .a, .b, .c, .d, .e:
            return true
        default:
            return false
        }
    }
    
    
/**
Static variable that returns the official name for the Nutri-Score in latin script.
*/
    public static var name: String {
        return "NUTRI-SCORE"
    }
}
