//: Playground - noun: a place where people can play

import UIKit

let myString = "A man, a plan, a canal: Panama"
let alphaNumericString = myString.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()
