import XCTest

final class CITestAppUITests: XCTestCase {
  var app: XCUIApplication

  override func setUpWithError() throws {
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }

  func testAppLaunches() throws {
    // Test that the app launches and shows the main content
    let navigationTitle = app.navigationBars["CITestApp"]
    XCTAssertTrue(navigationTitle.exists)

    let welcomeText = app.staticTexts["Welcome to CITestApp!"]
    XCTAssertTrue(welcomeText.exists)

    let getStartedButton = app.buttons["Get Started"]
    XCTAssertTrue(getStartedButton.exists)
  }

  func testGetStartedButton() throws {
    let getStartedButton = app.buttons["Get Started"]
    XCTAssertTrue(getStartedButton.exists)

    getStartedButton.tap()
    // Add assertions for what should happen when button is tapped
  }
}
