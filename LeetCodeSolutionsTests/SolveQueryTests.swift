//
//  SolveQueryTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-07.
//

import XCTest
@testable import LeetCodeSolutions

final class SolveQueryTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_solveQueryTests_basicInput_returnsExpected() {
    // Arrange
    let nums = [1,6,3,2,7,2]
    let queries = [[0, 3], [2, 5], [2, 4]]
    let limit = 13
    let resut = [true, false, true]
    
    // Act & Assert
    XCTAssertEqual(solveQuery(nums, queries, limit), resut)
  }
}
