//
//  SolveQuery.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-07.
//

/// Example 1: Given an integer array nums, an array queries where queries[i] = [x, y] and an integer limit,
/// return a boolean array that represents the answer to each query. A query is true if the sum of the subarray from x to y is less than limit, or false otherwise.

/// For example, given nums = [1, 6, 3, 2, 7, 2], queries = [[0, 3], [2, 5], [2, 4]], and limit = 13, the answer is [true, false, true].
/// For each query, the subarray sums are [12, 14, 12].

// Total run time: O(n) + O(m) + C => O(n + m)
func solveQuery(_ nums: [Int], _ queries:[[Int]], _ limit: Int) -> [Bool] {
  let prefixSum = nums.prefix()
  var results = [Bool]()
  
  for pair in queries {
    guard let left = pair.first,
          let right = pair.last else {
      return [false]
    }

    if prefixSum[right] - prefixSum[left] + nums[left] < limit {
      results.append(true)
    } else {
      results.append(false)
    }
  }

  return results
}

extension Array where Element == Int {
  func prefix() -> [Int] {
    var result = [Int]()

    for element in self {
      if result.count > 0 {
        result.append(element + result[result.count - 1])
      } else {
        result.append(element)
      }
    }

    return result
  }
}
