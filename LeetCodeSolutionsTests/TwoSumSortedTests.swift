//
//  TwoSumSortedTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-03.
//

import XCTest
@testable import LeetCodeSolutions

final class TwoSumSortedTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_twoSumSorted_withValidPair_returnsTrue() {
    let input = [1,2,4,6,8,9,14,15]
    let target = 13
    
    XCTAssertTrue(twoSumSorted(input, target: target))
  }
  
  func test_twoSumSorted_withValidNegativePair_returnsTrue() {
    let input = [-6, -5, -2, 10, 12, 14]
    let target = 9

    XCTAssertTrue(twoSumSorted(input, target: target))
  }
  
  func test_twoSumSorted_withInvalidPair_returnsFalse() {
    let input = [2,4,6,8,9,14,15]
    let target = 7
    
    XCTAssertFalse(twoSumSorted(input, target: target))
  }
  
  func test_twoSumSorted_withEmptyArray_returnsTrue() {
    let input = [Int]()
    let target = 3
    
    XCTAssertFalse(twoSumSorted(input, target: target))
  }
}
