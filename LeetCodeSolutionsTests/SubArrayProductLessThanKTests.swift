//
//  SubArrayProductLessThanKTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-06.
//

import XCTest
@testable import LeetCodeSolutions

final class SubArrayProductLessThanKTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_subArrayLessThanK_basicInput_returnsExpected() {
    // Arrange
    let input = [10,2,5,6]
    let productMax = 100
    let result = 8
    
    // Act & Assert
    XCTAssertEqual(numSubarrayProductLessThanK(input, productMax), result)
  }
  
  func test_subArrayLessThanK_zeroProduct_returnsZero() {
    // Arrange
    let input = [1,2,3,4]
    let productMax = 0
    let result = 0
    
    // Act & Assert
    XCTAssertEqual(numSubarrayProductLessThanK(input, productMax), result)
  }
  
  func test_subArrayLessThanK_zeroElement_returnsExpected() {
    // Arrange
    let input = [0,2,4]
    let productMax = 10
    let result = 6
    
    // Act & Assert
    XCTAssertEqual(numSubarrayProductLessThanK(input, productMax), result)
  }
}
