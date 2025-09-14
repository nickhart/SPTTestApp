import Combine
import SwiftUI

@MainActor
class MainViewModel: ObservableObject {
  @Published var message = "Hello from CITestApp!"
  @Published var isLoading = false

  func refreshData() {
    isLoading = true

    // Simulate async work
    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
      self.message = "Data refreshed at \(Date().formatted(date: .omitted, time: .shortened))"
      self.isLoading = false
    }
  }
}
