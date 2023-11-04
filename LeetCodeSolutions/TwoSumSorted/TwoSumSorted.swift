//
//  TwoSumSorted.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-03.
//

import Foundation

/// Given a sorted array of unique integers and a target integer, return true if there
///  exists a pair of numbers that sum to target, false otherwise

func twoSumSorted(_ nums: [Int], target: Int) -> Bool {
  var i = 0
  var j = nums.count - 1
  
  while i < j {
    let sum = nums[i] + nums[j]
    if sum == target {
      return true
    } else {
      if sum > target {
        j -= 1
      } else {
        i += 1
      }
    }
  }
  return false
}
