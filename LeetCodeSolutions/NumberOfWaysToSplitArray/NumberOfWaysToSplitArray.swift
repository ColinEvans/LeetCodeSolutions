//
//  NumberOfWaysToSplitArray.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-09.
//

func waysToSplitArray(_ nums: [Int]) -> Int {
  let prefixSum = nums.prefixSum()
  var validSplits = 0

  for index in nums.indices {
    guard index < nums.count - 1 else { continue }

    let leftSum = prefixSum[index] - prefixSum[0] + nums[0]
    let rightSum = prefixSum[nums.count - 1] - prefixSum[index + 1] + nums[index + 1]
  
    if leftSum >= rightSum {
      validSplits += 1
    }
  }
  return validSplits
}
