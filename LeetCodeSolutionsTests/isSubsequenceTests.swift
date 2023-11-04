//
//  isSubsequenceTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-03.
//


import XCTest
@testable import LeetCodeSolutions

final class isSubsequenceTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_isSubsequence_validSequence_returnsTrue() {
    let sequence = "colin"
    let target = "aczzoeelmmiqqn"
    
    XCTAssertTrue(isSubsequence(sequence, target))
  }
  
  func test_isSubsequence_emptySequence_returnsTrue() {
    let sequence = ""
    let target = "Hello, world"
    
    XCTAssertTrue(isSubsequence(sequence, target))
  }
  
  func test_isSubsequence_invalidSequence_returnsFalse() {
    let sequence = "adcf"
    let target = "abcdef"
    
    XCTAssertFalse(isSubsequence(sequence, target))
  }
  
  func test_isSubsequence_emptyTarget_returnsFalse() {
    let sequence = "adcf"
    let target = ""
    
    XCTAssertFalse(isSubsequence(sequence, target))
  }
}

