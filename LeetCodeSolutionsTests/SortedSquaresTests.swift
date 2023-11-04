//
//  SortedSquaresTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-04.
//

import XCTest
@testable import LeetCodeSolutions

final class SortedSquaresTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_sortedSquares_allPostive_returnsExpected() {
    // Arrange
    let input = [1, 2, 3, 4, 5, 6, 7]
    let expected = [1, 4, 9, 16, 25, 36, 49]
    
    // Act & Assert
    XCTAssertEqual(sortedSquares(input), expected)
  }
  
  func test_sortedSquares_positiveAndNegative_returnsExpected() {
    // Arrange
    let input = [-8, -7, 2, 3, 4]
    let expected = [4, 9, 16, 49, 64]
    
    // Act & Assert
    XCTAssertEqual(sortedSquares(input), expected)
  }
  
  func test_sortedSquares_allNegative_returnsExpected() {
    // Arrange
    let input = [-10, -8, -6, -3, -2]
    let expected = [4, 9, 36, 64, 100]

    // Act & Assert
    XCTAssertEqual(sortedSquares(input), expected)
  }
}
