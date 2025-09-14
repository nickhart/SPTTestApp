@testable import SPTTestApp
import SwiftUI
import XCTest

final class ContentViewTests: XCTestCase {
  func testContentViewExists() throws {
    // Test that ContentView can be instantiated
    let contentView = ContentView()
    XCTAssertNotNil(contentView)
  }
}
