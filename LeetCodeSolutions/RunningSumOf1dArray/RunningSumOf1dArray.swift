//
//  RunningSumOf1dArray.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-09.
//

func runningSum(_ nums: [Int]) -> [Int] {
  var sum = 0
  return nums.map {
    let result = $0 + sum
    sum += $0
    return result
  }
}
