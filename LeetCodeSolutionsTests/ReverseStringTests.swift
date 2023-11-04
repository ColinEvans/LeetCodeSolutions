//
//  ReverseStringTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-03.
//

import XCTest
@testable import LeetCodeSolutions

final class ReverseStringTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  
  func test_reverseString_validRomanCharacters_matchesExpected() {
    // Assign
    var sut: [Character] = ["h", "e", "l", "l", "o"]
    let expectedResult: [Character] = ["o", "l", "l", "e", "h"]
    
    // Act
    reverseString(&sut)
    
    // Assert
    XCTAssertEqual(sut, expectedResult)
  }
  
  func test_reverseString_validASCII_matchesExpected() {
    // Assign
    var sut: [Character] = ["a", "b", "c", "d", "e", "f", "g", "?", "=", "*"]
    let expectedResult: [Character] = ["*", "=", "?", "g", "f", "e", "d", "c", "b", "a"]
    
    // Act
    reverseString(&sut)
    
    // Assert
    XCTAssertEqual(sut, expectedResult)
  }
  
  func test_reverseString_repeatedCharacters_matchesExpected() {
    // Assign
    var sut: [Character] = ["a","a","b","b","c","c"]
    let expectedResult: [Character] = ["c","c","b","b","a","a"]
    
    // Act
    reverseString(&sut)
    
    // Assert
    XCTAssertEqual(sut, expectedResult)
  }
  
  func test_reverseString_emptyString_matchesEmpty() {
    // Assign
    var sut = [Character]()
    let expectedResult = [Character]()
    
    // Act
    reverseString(&sut)
    
    //Assert
    XCTAssertEqual(sut, expectedResult)
  }
}
