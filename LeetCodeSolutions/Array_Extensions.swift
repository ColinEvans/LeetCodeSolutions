//
//  Array_Extensions.swift
//  LeetCodeSolutions
//
//  Created by Colin Evans on 2023-11-09.
//

extension Array where Element == Int {
  func prefixSum() -> [Int] {
    var results = [Int]()
    guard self.count >= 1 else { return results }
    
    results.append(self[0])
    for index in 1..<self.count {
      results.append(self[index] + results[index - 1])
    }

    return results
  }
}
