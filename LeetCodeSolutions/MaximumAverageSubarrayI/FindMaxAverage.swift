//
//  FindMaxAverage.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-07.
//

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
  guard k > 0 else { return 0 }

  var currentSum = nums[0..<k].reduce(0, {$0 + $1})
  var maxSum = currentSum
  for index in k..<nums.count {
    let offSet = index - k
    currentSum += nums[index]
    currentSum -= nums[offSet]

    maxSum = max(maxSum, currentSum)
  }

  return maxSum.avg(count: k)
}

extension Int {
  func avg(count: Int) -> Double {
    Double(self) / Double(count)
  }
}
