//
//  MinimumValueToGetPositiveStepByStepSum.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-09.
//

func minStartValue(_ nums: [Int]) -> Int {
  let prefixSums = nums.prefixSum()

  var largestIntRequired = 1
  for sumAtI in prefixSums {
    if sumAtI < 0,
       abs(sumAtI) >= largestIntRequired {
      largestIntRequired = abs(sumAtI) + 1
    }
  }
  return largestIntRequired
}
