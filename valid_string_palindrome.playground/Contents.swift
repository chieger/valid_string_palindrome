//: Playground - noun: a place where people can play

import UIKit

// Palindrome identification

// input string (palindrome)
let palindromeString = "A man, a plan, a canal: Panama"

// input string (non-palindrome)
let nonPalindromeString = "this is NOT a palindrome!"

func isPalindrome(_ s: String) -> Bool {

   // Step 1: Handle case of empty string, return true
   guard !s.isEmpty else { return true }

   // Step 2: Return alphanumeric lowercase string from input
   let alphaNumericString = s.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()

   // Step 3: Compare alphanumeric string with it's reversed version
   return alphaNumericString == String(alphaNumericString.reversed())
}

// test palindrome
isPalindrome(palindromeString)
// test non-palindrome
isPalindrome(nonPalindromeString)
// test empty
isPalindrome("")
