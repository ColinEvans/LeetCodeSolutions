//
//  LeetCodeSolutionsTests.swift
//  LeetCodeSolutionsTests
//
//  Created by Colin Evans on 2023-11-02.
//

import XCTest
@testable import LeetCodeSolutions

final class LeetCodeSolutionsTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_isPalindromValid_validPalindrome_returnsTrue() {
    XCTAssertTrue(isPalindrome("racecar"))
  }
  
  func test_isPalindromValid_validPalindromAllCapitals_retunrsTrue() {
    XCTAssertTrue(isPalindrome("RACECAR"))
  }
  
  func test_isPalindromValid_validPalindromeWithNonAplhaNumericCharacters_retunrsTrue() {
    XCTAssertTrue(isPalindrome("A man, a plan, a canal: Panama"))
  }
  
  func test_isPalindromValid_emptyInput_returnsTrue() {
    XCTAssertTrue(isPalindrome(" "))
  }
  
  func test_isPalindromValid_invalidPalindrome_returnsFalse() {
    XCTAssertFalse(isPalindrome("race a car"))
  }
  
  func test_isPalindromValid_invalidPalindromWithNonAlphaNumericCharacters_returnsFalse() {
    XCTAssertFalse(isPalindrome("$chool, B@Y"))
  }

}
