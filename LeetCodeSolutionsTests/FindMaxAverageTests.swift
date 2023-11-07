//
//  FindMaxAverageTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-07.
//

import XCTest
@testable import LeetCodeSolutions

final class FindMaxAverageTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_findMaxAverage_basicInput_returnsExpected() {
    // Arrange
    let input = [1, 3, 5, 7, 14, 28, 40]
    let k = 3
    let result: Double = (82 / 3)
    
    // Act & Assert
    XCTAssertEqual(findMaxAverage(input, k), result)
  }
  
  func test_findMaxAverage_negativeInput_returnsExpected() {
    // Arrange
    let input = [-57, -21, -3, -10, -22]
    let k = 3
    let result: Double = -1 * (34 / 3)
    
    // Act & Assert
    XCTAssertEqual(findMaxAverage(input, k), result)
  }
  
  func test_findMaxAverage_largeNegativeInput_returnsExpected() {
    // Arrange
    let input = [-100, -88, -66, 10, 3, 4, 5, 0]
    let k = 4
    let result: Double = (22 / 4)
    
    // Act & Assert
    XCTAssertEqual(findMaxAverage(input, k), result)
  }
}
