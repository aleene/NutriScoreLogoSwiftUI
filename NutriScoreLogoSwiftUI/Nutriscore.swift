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
    * .a: shows the Nutriscore logo with the A highlighted
    - .b: shows the Nutriscore logo with the B highlighted
    - .c: shows the Nutriscore logo with the C highlighted
    - .d: shows the Nutriscore logo with the D highlighted
    - .e: shows the Nutriscore logo with the E highlighted
    - .exempt: shows a gray Nutriscore logo with no letters highlighted and a black cross through the logo
    - .unknown: shows a gray Nutriscore logo with no letters highlighted
 */
enum Nutriscore {
    case a
    case b
    case c
    case d
    case e
    case exempt
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
Computed variable that returns a boolean whether a valid nutriscore exist.
 
 - Values:
    - true: for Nutriscore values a, b, c, d and e
    - false: for Nutriscore values exempt and unknown
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
Static variable that returns the official name for the Nutriscore in latin script.
*/
    public static var name: String {
        return "NUTRI-SCORE"
    }
}
