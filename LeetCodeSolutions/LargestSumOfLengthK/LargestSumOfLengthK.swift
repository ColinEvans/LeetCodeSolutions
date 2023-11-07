//
//  LargestSumOfLengthK.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-06.
//

/// Given an integer array nums and an integer k, find the sum of the subarray with the largest sum whose length is k.
func largestSumOfLengthK(_ nums: [Int], length k: Int) -> Int {
  guard k != 0 else { return 0 }

  var currentMaxSum = nums[0..<k].reduce(0, { $0 + $1} )
  var answer = currentMaxSum
  print(currentMaxSum)
  
  for index in k..<nums.count {
    let offSet = index - k
    currentMaxSum += nums[index]
    currentMaxSum -= nums[offSet]
    
    answer = max(answer, currentMaxSum)
  }
  
  return answer
}
