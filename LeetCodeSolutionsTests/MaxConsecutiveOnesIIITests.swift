//
//  MaxConsecutiveOnesIII.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-07.
//

import XCTest
@testable import LeetCodeSolutions

final class MaxConsecutiveOnesIIITests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_maxConsecutiveOnesIII_basicInput_returnsExpected() {
    // Arrange
    let input = [1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0]
    let k = 3
    let result = 14
    
    // Act & Assert
    XCTAssertEqual(longestOnes(input, k), result)
  }
  
  func test_maxConsecutiveOnesIII_basicInput2_returnsExpected() {
    // Arrange
    let input = [1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0]
    let k = 5
    let result = 16
    
    // Act & Assert
    XCTAssertEqual(longestOnes(input, k), result)
  }
  
  func test_maxConsecutiveOnesIII_allZeros_returnsK() {
    // Arrange
    let input = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    let k = 4
    let result = 4
    
    // Act & Assert
    XCTAssertEqual(longestOnes(input, k), result)
  }
  
  func test_maxConsecutiveOnesIII_noZeros_returnsExpected() {
    // Arrange
    let input = [1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1]
    let k = 0
    let result = 4
    
    // Act & Assert
    XCTAssertEqual(longestOnes(input, k), result)
  }
  
  func test_maxConsecutiveOnesII_allOnes_returnsExpected() {
    // Arrange
    let input = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    let k = 6
    let result = input.count
    
    // Act & Assert
    XCTAssertEqual(longestOnes(input, k), result)
  }
}
