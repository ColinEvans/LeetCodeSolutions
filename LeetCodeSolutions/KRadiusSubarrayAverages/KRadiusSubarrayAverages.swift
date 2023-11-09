//
//  KRadiusSubarrayAverages.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-09.
//

func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
  let prefixSum = nums.prefixSum()
  var results = [Int]()

  for index in nums.indices {
    if index < k || nums.count - index <= k {
      results.append(-1)
    } else {
      let rightBound = k + index
      let leftBound = index - k
      let total = prefixSum[rightBound] - prefixSum[leftBound] + nums[leftBound]
      results.append(total / ((2 * k) + 1))
    }
  }

  return results
}
