import Testing
import Combine
@testable import CITestApp

@MainActor
struct MainViewModelTests {
    
    @Test("Initial state should be correct")
    func initialState() {
        let viewModel = MainViewModel()
        #expect(viewModel.message == "Hello from CITestApp!")
        #expect(viewModel.isLoading == false)
    }
    
    @Test("Refresh data should update message and loading state")
    func refreshData() async {
        let viewModel = MainViewModel()
        
        // Start refresh
        viewModel.refreshData()
        #expect(viewModel.isLoading == true)
        
        // Wait for completion
        try? await Task.sleep(nanoseconds: 1_100_000_000) // 1.1 seconds
        
        #expect(viewModel.isLoading == false)
        #expect(viewModel.message.contains("Data refreshed"))
    }
}
