//
//  SortedSquares.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-04.
//

/// Given an integer array nums sorted in non-decreasing order,
/// return an array of the squares of each number sorted in non-decreasing order.
func sortedSquares(_ nums: [Int]) -> [Int] {
  var i = 0
  var j = nums.count - 1
  var n = nums.count - 1
  
  var result:[Int] = Array(repeating: 0, count: nums.count)
  
  while n >= 0 {
    let frontSquared = nums[i].squared()
    let backSquared = nums[j].squared()

    if frontSquared > backSquared {
      result[n] = frontSquared
      i += 1
    } else {
      result[n] = backSquared
      j -= 1
    }
    n -= 1
  }
  
  return result
}

extension Int {
  func squared() -> Int {
    return self * self
  }
}
