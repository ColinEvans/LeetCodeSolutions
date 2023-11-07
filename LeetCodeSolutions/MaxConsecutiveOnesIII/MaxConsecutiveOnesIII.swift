//
//  MaxConsecutiveOnesIII.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-07.
//

func longestOnes(_ nums: [Int], _ k: Int) -> Int {
  var left = 0
  var numberOfZeros = 0
  var currentStreak = 0
  var answer = 0
  
  for right in nums.indices {
    currentStreak += 1
    if nums[right] == 0 {
      numberOfZeros += 1
    }

    while numberOfZeros > k {
      if nums[left] == 0 {
        numberOfZeros -= 1
      }
      currentStreak -= 1
      left += 1
    }

    answer = max(answer, currentStreak)
  }
  return answer
}
