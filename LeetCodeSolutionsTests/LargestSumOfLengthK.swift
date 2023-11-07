//
//  LargestSumOfLengthK.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-06.
//

import XCTest
@testable import LeetCodeSolutions

final class LargestSumOfLengthKTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_largestSumOfLengthK_basicInput_returnsExpected() {
    // Arrange
    let input = [2, 4, 10, 3, 6, 1]
    let length = 3
    let result = 19
    
    // Act & Assert
    XCTAssertEqual(largestSumOfLengthK(input, length: length), result)
  }
  
  func test_largestSumOfLengthK_zeroSum_returnsZero() {
    // Arrange
    let input = [2,6,10,100,123,12]
    let length = 0
    let result = 0
    
    // Act & Assert
    XCTAssertEqual(largestSumOfLengthK(input, length: length), result)
  }
  
  func test_largestSumOfLengthK_largeInput_returnsExpected() {
    // Arrange
    let input = [7, 12, 23, 48, 11, 9, 0, 7, -8, 22, 55]
    let length = 4
    let result = 94
    
    // Act & Assert
    XCTAssertEqual(largestSumOfLengthK(input, length: length), result)
  }
  
  func test_largestSumOfLengthK_negativeInput_returnsExpected() {
    // Arrange
    let input = [3, -1, 4, 12, -8, 5, 6]
    let length = 4
    let result = 18
    
    // Act & Assert
    XCTAssertEqual(largestSumOfLengthK(input, length: length), result)
  }
}
