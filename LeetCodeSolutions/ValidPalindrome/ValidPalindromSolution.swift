//
//  ValidPalindromSolution.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-02.
//

import Foundation

/// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters,
/// it reads the same forward and backward. Alphanumeric characters include letters and numbers.
/// https://leetcode.com/problems/valid-palindrome/

func isPalindrome(_ s: String) -> Bool {
  let formattedString = s.filter { $0.isLetter || $0.isNumber }.lowercased()
  guard !formattedString.isEmpty else { return true }

  var first = 0
  var last = formattedString.count - 1

  var firstIndex = formattedString.startIndex
  var lastIndex = formattedString.index(before: formattedString.endIndex)

  while first < last {
    if formattedString[firstIndex] != formattedString[lastIndex] {
      return false
    }
    first += 1
    last -= 1
    let nextFirstIndex = formattedString.index(after: firstIndex)
    let previousLastIndex = formattedString.index(before: lastIndex)
    firstIndex = nextFirstIndex
    lastIndex = previousLastIndex
  }
  return true
}
