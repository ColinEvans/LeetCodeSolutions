//
//  MaxConsecutiveOnes.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-04.
//

// Given a binary array nums, return the maximum number of consecutive 1's in the array.

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
  var currentStreak = 0
  var maxConsecuative = 0

  for right in nums.indices {
    if nums[right] == 1 {
      currentStreak += 1
    } else {
      currentStreak = 0
    }
  
    maxConsecuative = max(maxConsecuative, currentStreak)
  }

  return maxConsecuative
}
