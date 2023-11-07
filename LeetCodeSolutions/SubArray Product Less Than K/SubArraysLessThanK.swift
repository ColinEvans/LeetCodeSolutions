//
//  SubArraysLessThanK.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-06.
//

/// Given an array of integers nums and an integer k,
/// return the number of contiguous subarrays where the product of all the elements in the subarray is strictly less than k.
func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
  var left = 0
  var currentMult = 1
  var validSubArrays = 0

  for right in nums.indices {
    currentMult *= nums[right]
    if currentMult >= k {
      while currentMult >= k && left <= right {
        currentMult /= nums[left]
        left += 1
      }
    }
    validSubArrays += right - left + 1
  }
  return validSubArrays
}
