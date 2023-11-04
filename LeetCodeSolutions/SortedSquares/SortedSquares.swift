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
  var n = 0
  
  var result = [Int]()
  
  while n < nums.count {
    let frontSquared = nums[i].squared()
    let backSquared = nums[j].squared()

    if frontSquared > backSquared {
      result.append(frontSquared)
      i += 1
    } else {
      result.append(backSquared)
      j -= 1
    }
    n += 1
  }
  
  return result.reversed()
}

extension Int {
  func squared() -> Int {
    return self * self
  }
}
