//
//  MaxConsecutiveOnesII.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-06.
//

func findMaxConsecutiveOnesII(_ nums: [Int]) -> Int {
  var left = 0
  var maxOnes = 0
  var currentStreak = 0
  var indexOfFlippedZero: Int?

  for right in nums.indices {
    if nums[right] == 1 {
      currentStreak += 1
    } else {
      if indexOfFlippedZero == nil {
        currentStreak += 1
        indexOfFlippedZero = right
      } else {
        if let indexOfFlippedZero {
          while left <= indexOfFlippedZero {
            currentStreak -= 1
            left += 1
          }
        }
  
        indexOfFlippedZero = right
        currentStreak += 1
      }
    }
    maxOnes = max(maxOnes, currentStreak)
  }

  return maxOnes
}
