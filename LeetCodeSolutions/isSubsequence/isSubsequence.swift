//
//  isSubsequence.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-03.
//

func isSubsequence(_ s: String, _ t: String) -> Bool {
  var i = 0
  var currentIndexS = s.startIndex

  var j = 0
  var currentIndexT = t.startIndex

  while i < s.count && j < t.count {
    if s[currentIndexS] == t[currentIndexT] {
      i += 1
      currentIndexS = s.index(after: currentIndexS)
    }
    j += 1
    currentIndexT = t.index(after: currentIndexT)
  }

  return i == s.count
}
